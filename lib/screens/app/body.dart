import 'package:flutter/material.dart';
import 'package:weatherapp/screens/misc/weather_gauge.dart';

class AppBodyScreen extends StatefulWidget {
  const AppBodyScreen({Key? key}) : super(key: key);

  @override
  State<AppBodyScreen> createState() => _AppBodyScreenState();
}

class _AppBodyScreenState extends State<AppBodyScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'images/snow.jpg',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // Search and Menu Icon
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {},
            color: Colors.white,
            // style:
          ),
          IconButton(
            icon: Icon(
              Icons.menu,
            ),
            onPressed: () {},
            color: Colors.white,
          )
        ]),

        // page position

        // Location,  time and date
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Warsaw',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Text(
                "6:30pm - Wed, 3 May '23.",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: 90,
        ),
        // Temprature and temperature status
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '-5°',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 80,
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'images/snow-icon.png',
                    width: 25,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Snowing",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        // divider
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 50,
          ),
          child: Divider(
            thickness: 1.5,
            color: Colors.white,
          ),
        ),

        // Wind, rain and humidity
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // wind
              WeatherGaugeSection(
                title: 'Wind',
                unitValue: '12',
                unit: 'km/h',
              ),

              // rain
              WeatherGaugeSection(
                title: 'Rain',
                unitValue: '0',
                unit: '%',
              ),

              // humidity
              WeatherGaugeSection(
                title: 'Humidity',
                unitValue: '88',
                unit: '%',
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
