import 'dart:async';
import 'package:dio/dio.dart';

class ThrottleInterceptor extends Interceptor {
  final Duration throttleDuration = const Duration(seconds: 2);
  DateTime? _lastRequestTime;
  bool _isWaiting = false;

  ThrottleInterceptor();

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final now = DateTime.now();

    if (_lastRequestTime == null ||
        (_lastRequestTime != null &&
            now.difference(_lastRequestTime!) >= throttleDuration)) {
      // Execute request immediately
      _lastRequestTime = now;
      handler.next(options);
    } else if (!_isWaiting) {
      // If still within throttle window, delay until it's over
      _isWaiting = true;
      final waitTime = throttleDuration - now.difference(_lastRequestTime!);

      Timer(waitTime, () {
        _lastRequestTime = DateTime.now();
        _isWaiting = false;
        handler.next(options);
      });
    } else {
      // Drop request if another is waiting
      handler.reject(
        DioException(
          requestOptions: options,
          type: DioExceptionType.cancel,
          error: 'Request throttled: another request is pending.',
        ),
        true,
      );
    }
  }
}
