import 'package:intl/intl.dart';

class CustomDateTimeUtil {
  static String formatTime(String date) {
    DateTime dateTime = DateTime.parse(date);
    return DateFormat('dd-MM-yyyy hh:mm a').format(dateTime);
  }

 static  String calculateExperience(String date) {
    if (date.isEmpty) {
      return "N/A";
    }

    final registrationDate = DateTime.parse(date);
    final now = DateTime.now();
    final difference = now.difference(registrationDate);

    final years = difference.inDays ~/ 365;
    final months = (difference.inDays % 365) ~/ 30;

    if (years > 0) {
      return "$years ${years == 1 ? 'year' : 'years'}";
    } else if (months > 0) {
      return "$months ${months == 1 ? 'month' : 'months'}";
    } else {
      return "< 1 month";
    }
  }
}
