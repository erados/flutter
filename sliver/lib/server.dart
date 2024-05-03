import 'daily_forecast.dart';

class Server {
  static List<DailyForecast> getDailyForecastList() {
    return <DailyForecast>[
      DailyForecast(
          description: 'Sunny', highTemp: 25, lowTemp: 15, day: 10, weekday: 0),
      DailyForecast(
          description: 'Cloudy',
          highTemp: 22,
          lowTemp: 12,
          day: 11,
          weekday: 1),
      DailyForecast(
          description: 'Rainy', highTemp: 18, lowTemp: 10, day: 12, weekday: 2),
      DailyForecast(
          description: 'Sunny', highTemp: 20, lowTemp: 14, day: 13, weekday: 3),
      DailyForecast(
          description: 'Sunny', highTemp: 22, lowTemp: 16, day: 14, weekday: 4),
      DailyForecast(
          description: 'Sunny', highTemp: 24, lowTemp: 18, day: 15, weekday: 5),
      DailyForecast(
          description: 'Sunny', highTemp: 26, lowTemp: 20, day: 16, weekday: 6),
      DailyForecast(
          description: 'Sunny', highTemp: 25, lowTemp: 15, day: 17, weekday: 0),
      DailyForecast(
          description: 'Cloudy',
          highTemp: 22,
          lowTemp: 12,
          day: 18,
          weekday: 1),
      DailyForecast(
          description: 'Rainy', highTemp: 18, lowTemp: 10, day: 19, weekday: 2),
      DailyForecast(
          description: 'Sunny', highTemp: 20, lowTemp: 14, day: 20, weekday: 3),
      DailyForecast(
          description: 'Sunny', highTemp: 22, lowTemp: 16, day: 21, weekday: 4),
      DailyForecast(
          description: 'Sunny', highTemp: 24, lowTemp: 18, day: 22, weekday: 5),
      DailyForecast(
          description: 'Sunny', highTemp: 26, lowTemp: 20, day: 23, weekday: 6),
    ];
  }
}
