import 'package:flutter/material.dart';
import 'server.dart';
import 'daily_forecast.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horizons Weekly Forecast',
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        scrollbars: false,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Horizons'),
            backgroundColor: Colors.teal[800],
          ),
          body: const WeeklyForecastList()),
    );
  }
}

class WeeklyForecastList extends StatelessWidget {
  const WeeklyForecastList({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime currentDate = DateTime.now();
    final TextTheme textTheme = Theme.of(context).textTheme;
    final List<DailyForecast> forecasts = Server.getDailyForecastList();

    return SingleChildScrollView(
        child: Column(
            children: forecasts.map((DailyForecast dailyForecast) {
      return Card(
        child: ListTile(
          leading: Text(dailyForecast.getDate(currentDate.day).toString()),
          title: Text(
            dailyForecast.getWeekday(),
            style: textTheme.headline5,
          ),
          subtitle: Text(dailyForecast.description),
          trailing: Text(
            '${dailyForecast.highTemp} | ${dailyForecast.lowTemp} °C',
            style: textTheme.subtitle2,
          ),
        ),
      );
    }).toList()));
  }
}
