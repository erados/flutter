class DailyForecast {
  final String description;
  final int highTemp;
  final int lowTemp;
  final int day;
  final int weekday;

  DailyForecast(
      {required this.description,
      required this.highTemp,
      required this.lowTemp,
      required this.day,
      required this.weekday});

  int getDate(int currentDate) {
    return day;
  }

  String getWeekday() {
    final List<String> weekdays = <String>[
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ];
    return weekdays[weekday % 7];
  }
}
