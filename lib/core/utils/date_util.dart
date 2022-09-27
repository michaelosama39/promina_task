import 'package:intl/intl.dart';

String dayNameOfMonth(index) {
  var now = DateTime.now();
  DateTime lastDayOfMonth = DateTime(now.year, now.month, 0);
  final currentDate = lastDayOfMonth.add(Duration(days: index + 1));
  return DateFormat('E').format(currentDate);
}

String dayNumberOfMonth(index) {
  var now = DateTime.now();
  DateTime lastDayOfMonth = DateTime(now.year, now.month, 0);
  final currentDate = lastDayOfMonth.add(Duration(days: index + 1));
  return DateFormat('dd').format(currentDate);
}
