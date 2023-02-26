import 'package:budget_sample_ui/data/data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class _BarChart extends StatelessWidget {
  const _BarChart();

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barTouchData: BarTouchData(
          enabled: false,
          touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.transparent,
            tooltipPadding: EdgeInsets.zero,
            tooltipMargin: 8,
            getTooltipItem: (
              BarChartGroupData group,
              int groupIndex,
              BarChartRodData rod,
              int rodIndex,
            ) {
              return BarTooltipItem(
                '\$${rod.toY.toStringAsFixed(2)}',
                const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              );
            },
          ),
        ),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              getTitlesWidget: ((value, meta) {
                return SideTitleWidget(
                  axisSide: meta.axisSide,
                  space: 4,
                  child: Text(
                    weekLetterName[value.toInt()],
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                );
              }),
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        borderData: FlBorderData(show: false),
        barGroups: weeklySpending.asMap().entries.map((item) {
          return BarChartGroupData(
            x: item.key,
            barRods: [
              BarChartRodData(
                toY: item.value.toDouble(),
                color: Colors.green,
                width: 18.0,
              )
            ],
            showingTooltipIndicators: [0],
          );
        }).toList(),
        gridData: FlGridData(show: false),
        alignment: BarChartAlignment.spaceAround,
      ),
    );
  }
}

class MyBarChart extends StatefulWidget {
  const MyBarChart({super.key});

  @override
  State<MyBarChart> createState() => _MyBarChartState();
}

class _MyBarChartState extends State<MyBarChart> {
  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 1.6,
      child: _BarChart(),
    );
  }
}
