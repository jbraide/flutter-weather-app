import 'package:flutter/material.dart';

class WeatherGaugeSection extends StatelessWidget {
  final String title;
  final String unitValue;
  final String unit;

  const WeatherGaugeSection({
    Key? key,
    required this.title,
    required this.unitValue,
    required this.unit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 8,
          ),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.grey[400],
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
        ),
        Text(
          unitValue,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        Text(
          unit,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),

        // indicator
      ],
    );
  }
}
