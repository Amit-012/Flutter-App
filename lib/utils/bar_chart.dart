import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_ui_app_design/utils/constaints.dart';

class BarChart extends StatelessWidget {
  final List<ChartData> data = [
    ChartData('Green', 40, greenColor),
    ChartData('Yellow', 35, yellowColor),
    ChartData('Red', 20, redColor),
    ChartData('Blue', 50, blueColor),
  ];

  BarChart({super.key});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<ChartData, String>> series = [
      charts.Series(
        id: 'Bar Chart',
        data: data,
        domainFn: (ChartData chartData, _) => chartData.category,
        measureFn: (ChartData chartData, _) => chartData.value,
        colorFn: (ChartData chartData, _) =>
            charts.ColorUtil.fromDartColor(chartData.color),
        labelAccessorFn: (ChartData chartData, _) =>
            '${chartData.category}: ${chartData.value}',
      ),
    ];

    return Center(
      child: Container(
        height: 300,
        padding: const EdgeInsets.all(16),
        child: charts.BarChart(
          series,
          animate: true,
          vertical: true,
          barRendererDecorator: charts.BarLabelDecorator<String>(),
        ),
      ),
    );
  }
}

class ChartData {
  final String category;
  final int value;
  final Color color;

  ChartData(this.category, this.value, this.color);
}
