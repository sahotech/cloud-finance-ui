// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:cloud_finance_ui/utils/utils.dart';
import 'package:cloud_finance_ui/widgets/bar-graph/bar_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyBarGraph extends StatelessWidget {
  MyBarGraph({
    Key? key,
  }) : super(key: key);

  var leftbarcolor = blueColor;
  var rightbarcolor = graphColor;
  double width = 25;
  var borderradius = BorderRadius.circular(4);

  @override
  Widget build(BuildContext context) {
    BarData mybarData = BarData(
      janAmount: 730,
      febAmount: 830,
      marAmount: 400,
      aprAmount: 650,
      mayAmount: 980,
      junAmount: 830,
    );
    mybarData.initializeData();
    return SizedBox(
      height: 400,
      child: BarChart(
        swapAnimationCurve: Curves.bounceIn,
        swapAnimationDuration: PieChart.defaultDuration,
        BarChartData(
          maxY: 1000,
          minY: 0,
          borderData: FlBorderData(
            show: false,
          ),
          gridData: const FlGridData(
              show: true, drawHorizontalLine: true, drawVerticalLine: false),
          titlesData: const FlTitlesData(
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: bottomTitles,
                reservedSize: 42,
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 50,
                interval: 1,
                getTitlesWidget: leftTitles,
              ),
            ),
          ),
          barGroups: mybarData.bardata
              .map(
                (data) => BarChartGroupData(
                  x: data.x,
                  barRods: [
                    BarChartRodData(
                        toY: data.lefty,
                        color: leftbarcolor,
                        width: width,
                        borderRadius: borderradius),
                    BarChartRodData(
                        toY: data.righty,
                        color: rightbarcolor,
                        width: 24,
                        borderRadius: borderradius),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

Widget bottomTitles(double value, TitleMeta meta) {
  final titles = <String>[' Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'];

  final Widget text = Text(
    titles[value.toInt()],
    style: const TextStyle(
      color: Color(0xff7589a2),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
  );

  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 16, //margin top
    child: text,
  );
}

Widget leftTitles(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Color(0xff7589a2),
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  String text;
  if (value == 0) {
    text = '0';
  } else if (value == 200) {
    text = '\$200';
  } else if (value == 400) {
    text = '\$400';
  } else if (value == 600) {
    text = '\$600';
  } else if (value == 800) {
    text = '\$800';
  } else if (value == 1000) {
    text = '\$1,000';
  } else {
    return Container();
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 0,
    angle: 0,
    child: Text(text, style: style),
  );
}
