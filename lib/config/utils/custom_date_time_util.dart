import 'package:intl/intl.dart';

class CustomDateTimeUtil {
  static String formatTime(String date) {
    DateTime dateTime = DateTime.parse(date);
    return DateFormat('dd-MM-yyyy hh:mm a').format(dateTime);
  }
}
