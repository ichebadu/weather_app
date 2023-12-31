import 'dart:ui';
import 'package:flutter/material.dart';

import 'additional_info_item.dart';
import 'hourly_weather_forecast_item.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10,
                      sigmaY: 10,
                    ),
                    child: const Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            '300°K',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16),
                          Icon(
                            Icons.cloud,
                            size: 64,
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Rain',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Weather Forecast',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForecastItem(
                    time: '00:00',
                    icon: Icons.cloud,
                    temperature: '290',
                  ),
                  HourlyForecastItem(
                    time: '03:23',
                    icon: Icons.sunny,
                    temperature: '300.52',
                  ),
                  HourlyForecastItem(
                    time: '01:30',
                    icon: Icons.sunny_snowing,
                    temperature: '345',
                  ),
                  HourlyForecastItem(
                    time: '02:45',
                    icon: Icons.cloud,
                    temperature: '233',
                  ),
                  HourlyForecastItem(
                    time: '04:78',
                    icon: Icons.cloud,
                    temperature: '100',
                  ),
                ],
              ),
            ),
            const Text(
              'Additional Information',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                  additionalInfoItem(
                    icon: Icons.water_drop,
                    label: 'Humidity',
                    value: '94',
                  ),
                  additionalInfoItem(
                    icon: Icons.air,
                    label: 'Wind Speed',
                    value: '78',
                  ),
                  additionalInfoItem(
                    icon: Icons.beach_access,
                    label: 'Pressure',
                    value: '1000',
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
