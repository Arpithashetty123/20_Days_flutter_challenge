import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/100_days_of_flutter/day21/title_data.dart';
import 'package:flutter_application_1/100_days_of_flutter/day5/Textproperty.dart';

class LinearChartPage extends StatefulWidget {
  const LinearChartPage({super.key});
  @override
  State<LinearChartPage> createState() => _LinearChartPageState();
}
class _LinearChartPageState extends State<LinearChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 15, right: 10),
            child: Badge(child: Icon(Icons.notifications)),
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 5,
          )
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text("Balance", style: Mainheading()),
                          Text(
                            "\$ 12,500.00",
                            style: subHeading(),
                          ),
                          const SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      width: double.infinity,
                      child: LineChart(
                        mainData(),
                      ),
                    )
                  ],
                ),
              )
            ];
          },
          body: Center(
            child: Text(
              "LineChartData",
              style: subHeading(),
            ),
          )),
    );
  }

  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a)
  ];
  //linearchartData: 1.gridData, 2.Title data(top Title,bottom,left ,right), 3.Border Data,4.LinearBar Data,5.Below Bar Data
  LineChartData mainData() {
    return LineChartData(
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        drawHorizontalLine: true,
        horizontalInterval: 2,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: const FlTitlesData(
        show: true,
      rightTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: false
        )
      ),
      topTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: false
        )
      ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
              showTitles: true,
              interval: 1,
              reservedSize: 52,
              getTitlesWidget: leftTitleWidgets),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d), width: 2),
      ),
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0,1.2),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth:3,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
