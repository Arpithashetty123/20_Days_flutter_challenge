import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
 Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
      color: Colors.white
    );
    String text;
    switch (value.toInt()) {
      case 2:
        text ='MAR';
        break;
      case 5:
        text = 'JUN';
        break;
      case 8:
        text = 'SEP';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text,style: style,)
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
      color: Colors.white
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '10K';
        break;
      case 3:
        text = '30k';
        break;
      case 5:
        text = '50k';
        break;
      default:
        return Container();
    }
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text(text, style: style, ),
    );
  }