import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sleepfit/common/color.manager.dart';

import '../../../common/value.manager.dart';

class LineChartWidget2 extends StatefulWidget {
  const LineChartWidget2({super.key});

  @override
  State<LineChartWidget2> createState() => _LineChartWidget2State();
}

class _LineChartWidget2State extends State<LineChartWidget2> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xffA5A6F6),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 1.70,
          child: Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s18)),
            color: ColorManager.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              child: LineChart(
                mainData(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final style = TextStyle(
      color: ColorManager.subTitle,
      fontSize: 12,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = Text("Sun", style: style);
        break;
      case 3:
        text = Text("Mon", style: style);
        break;
      case 5:
        text = Text('Tue', style: style);
        break;
      case 7:
        text = Text('Wed', style: style);
        break;
      case 9:
        text = Text('Thu', style: style);
        break;
      case 11:
        text = Text('Fri', style: style);
        break;
      case 13:
        text = Text('Sat', style: style);
        break;

      default:
        text = Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    final style = TextStyle(
      color: ColorManager.subTitle,
      fontSize: 12,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '1:30';
        break;
      case 3:
        text = '02:00';
        break;
      case 5:
        text = '02:30';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        horizontalInterval: 1,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xffA5A6F6).withOpacity(0.00),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        border: Border.all(color: const Color(0x0fffffff)),
      ),
      minX: 0,
      maxX: 14,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(1, 4),
            FlSpot(3, 2),
            FlSpot(5, 5),
            FlSpot(7, 3.1),
            FlSpot(9, 4),
            FlSpot(11, 4),
            FlSpot(13, 4),
          ],
          isCurved: true,
          color: ColorManager.titleText,
          barWidth: 1,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: true,
          ),
        ),
      ],
    );
  }
}
