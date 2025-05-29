import 'package:intl/intl.dart';

abstract class CurrencyFormatHelper {
  static format(double number) {
    final currencyFormatter = NumberFormat.currency(
      locale: 'ar',
      symbol: 'ج.م',
      decimalDigits: 0,
    );
    return currencyFormatter.format(number);
  }
}
