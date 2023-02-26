import 'package:flutter/material.dart';

import 'my_bar_chart.dart';

class WeeklySpending extends StatelessWidget {
  final List<double> expenses;
  const WeeklySpending(this.expenses, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          const Text(
            'Weekly Spending',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back),
                iconSize: 30.0,
              ),
              const Text(
                'Nov 10, 2022 - Nov 16, 2022',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward),
                iconSize: 30.0,
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          MyBarChart()
        ],
      ),
    );
  }
}
