import 'package:intl/intl.dart';

abstract class DateFormatHelper {
  static String formatDate(DateTime dateTime) {
    return DateFormat('MM/dd/yyyy', 'en' /*'ar */).format(
      dateTime,
    );
  }

  static String formatTime(DateTime dateTime) {
    String format = DateFormat('h:mm', 'en' /*'ar */).format(dateTime);
    format += dateTime.hour >= 12 ? "مساءً" : "صباحاً";
    return format;
  }
}
