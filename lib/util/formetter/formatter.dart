import 'package:intl/intl.dart';

class AppFormatter {
  AppFormatter._();

  static String formatdate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-mm-yyyy').format(date);
  }
}
