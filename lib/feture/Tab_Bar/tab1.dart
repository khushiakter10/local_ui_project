import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class TimeDifferenceChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Difference: Bangladesh vs India"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LineChart(
          LineChartData(
            gridData: FlGridData(show: true),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (value, meta) {
                    switch (value.toInt()) {
                      case 0:
                        return Text('MON');
                      case 1:
                        return Text('TUE');
                      case 2:
                        return Text('WED');
                      case 3:
                        return Text('THU');
                      case 4:
                        return Text('FRI');
                      case 5:
                        return Text('SAT');
                      case 6:
                        return Text('SUN');
                      default:
                        return Text('');
                    }
                  },
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: true),
              ),
            ),
            borderData: FlBorderData(show: true, border: Border.all(color: Colors.black, width: 1)),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 0.5), // MON
                  FlSpot(1, 0.5), // TUE
                  FlSpot(2, 0.5), // WED
                  FlSpot(3, 0.5), // THU
                  FlSpot(4, 0.5), // FRI
                  FlSpot(5, 0.5), // SAT
                  FlSpot(6, 0.5), // SUN
                ],
                isCurved: true,
                color: Colors.red,
                belowBarData: BarAreaData(show: true, color: (Colors.blue),
              ),
              )],
          ),
        ),
      ),
    );
  }
}
