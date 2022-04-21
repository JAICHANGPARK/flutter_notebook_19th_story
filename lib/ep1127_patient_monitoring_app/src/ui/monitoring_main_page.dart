import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MonitoringMainPage extends StatefulWidget {
  const MonitoringMainPage({Key? key}) : super(key: key);

  @override
  State<MonitoringMainPage> createState() => _MonitoringMainPageState();
}

class _MonitoringMainPageState extends State<MonitoringMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Good Morning",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Dreamwalker",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Container(
                  height: 54,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        icon: Icon(CupertinoIcons.search),
                        hintText: "Search",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                        border: InputBorder.none),
                  ),
                ),
              ),
              Row(
                children: const [
                  Text(
                    "Measurements",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "All Signs",
                    style: TextStyle(
                      color: Colors.cyan,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.cyan,
                  )
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            height: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.grey[300]!,
                              ),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text("Blood Pressure (bpm)"),
                                    Icon(Icons.keyboard_arrow_right),
                                  ],
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "last 4 hours",
                                              style: TextStyle(
                                                color: Colors.grey[600],
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            const Spacer(),
                                            const Text(
                                              "141/90",
                                              style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 24,
                                              ),
                                            ),
                                            const Text(
                                              "7 min ago",
                                              style: TextStyle(
                                                color: Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: LineChart(
                                          LineChartData(
                                              minY: 0,
                                              maxY: 16,
                                              borderData: FlBorderData(
                                                show: false,
                                              ),
                                              gridData: FlGridData(
                                                show: false,
                                              ),
                                              titlesData: FlTitlesData(
                                                show: true,
                                                bottomTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                      showTitles: true,
                                                      getTitlesWidget: (v, _) {
                                                        return Text(
                                                          "${v.toInt()}",
                                                          style: const TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.grey,
                                                          ),
                                                        );
                                                      }),
                                                ),
                                                leftTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                    showTitles: false,
                                                  ),
                                                ),
                                                rightTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                    showTitles: false,
                                                  ),
                                                ),
                                                topTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                    showTitles: false,
                                                  ),
                                                ),
                                              ),
                                              lineBarsData: [
                                                LineChartBarData(
                                                  barWidth: 1.5,
                                                  dotData: FlDotData(show: false),
                                                  show: true,
                                                  color: Colors.red,
                                                  spots: List.generate(
                                                    25,
                                                    (index) => FlSpot(
                                                      index.toDouble(),
                                                      (5 + Random().nextInt(6)).toDouble(),
                                                    ),
                                                  ),
                                                )
                                              ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            height: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.grey[300]!,
                              ),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text("Blood oxygen (spo2)"),
                                    Icon(Icons.keyboard_arrow_right),
                                  ],
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "last 4 hours",
                                              style: TextStyle(
                                                color: Colors.grey[600],
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            const Spacer(),
                                            const Text(
                                              "90/60",
                                              style: TextStyle(
                                                color: Color.fromRGBO(206, 185, 103, 1),
                                                fontSize: 24,
                                              ),
                                            ),
                                            const Text(
                                              "7 min ago",
                                              style: TextStyle(
                                                color: Color.fromRGBO(206, 185, 103, 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: LineChart(
                                          LineChartData(
                                              minY: 0,
                                              maxY: 16,
                                              borderData: FlBorderData(
                                                show: false,
                                              ),
                                              gridData: FlGridData(
                                                show: false,
                                              ),
                                              titlesData: FlTitlesData(
                                                show: true,
                                                bottomTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                      showTitles: true,
                                                      getTitlesWidget: (v, _) {
                                                        if (v == 0) {
                                                          return const Text(
                                                            "${1}",
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              color: Colors.grey,
                                                            ),
                                                          );
                                                        } else if (v == 8) {
                                                          return const Text(
                                                            "${3}",
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              color: Colors.grey,
                                                            ),
                                                          );
                                                        } else if (v == 15) {
                                                          return const Text(
                                                            "${6}",
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              color: Colors.grey,
                                                            ),
                                                          );
                                                        } else if (v == 22) {
                                                          return const Text(
                                                            "${11}",
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              color: Colors.grey,
                                                            ),
                                                          );
                                                        }
                                                        return const Text(
                                                          "",
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.grey,
                                                          ),
                                                        );
                                                      },
                                                      interval: 1),
                                                ),
                                                leftTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                    showTitles: false,
                                                  ),
                                                ),
                                                rightTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                    showTitles: false,
                                                  ),
                                                ),
                                                topTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                    showTitles: false,
                                                  ),
                                                ),
                                              ),
                                              lineBarsData: [
                                                LineChartBarData(
                                                  barWidth: 1.5,
                                                  dotData: FlDotData(show: false),
                                                  show: true,
                                                  color: const Color.fromRGBO(206, 185, 103, 1),
                                                  spots: List.generate(
                                                    25,
                                                    (index) => FlSpot(
                                                      index.toDouble(),
                                                      (5 + Random().nextInt(6)).toDouble(),
                                                    ),
                                                  ),
                                                )
                                              ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            height: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.grey[300]!,
                              ),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text("Steps Count"),
                                    Icon(Icons.keyboard_arrow_right),
                                  ],
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "last 7 days",
                                              style: TextStyle(
                                                color: Colors.grey[600],
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            const Spacer(),
                                            const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "3,133",
                                                    style: TextStyle(color: Colors.blueAccent, fontSize: 24),
                                                  ),
                                                  TextSpan(
                                                    text: "Steps",
                                                    style: TextStyle(
                                                      color: Colors.blueAccent,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Text(
                                              "Today",
                                              style: TextStyle(
                                                color: Colors.blueAccent,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: BarChart(
                                          BarChartData(
                                              gridData: FlGridData(
                                                show: false,
                                              ),
                                              borderData: FlBorderData(
                                                show: false,
                                              ),
                                            titlesData: FlTitlesData(
                                                show: true,
                                                bottomTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                      showTitles: true,
                                                      getTitlesWidget: (v, _) {

                                                        if(v == 0.0){
                                                          return Text("S");
                                                        }
                                                        return const Text(
                                                          "",
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.grey,
                                                          ),
                                                        );
                                                      },
                                                      interval: 1),
                                                ),
                                                leftTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                    showTitles: false,
                                                  ),
                                                ),
                                                rightTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                    showTitles: false,
                                                  ),
                                                ),
                                                topTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                    showTitles: false,
                                                  ),
                                                ),
                                            ),
                                              barGroups: [
                                                BarChartGroupData(
                                                  x: 0,

                                                    barRods: [
                                                      BarChartRodData(
                                                          toY: 2,
                                                        width: 4
                                                      )
                                                    ]
                                                ),
                                                BarChartGroupData(
                                                  x: 1,
                                                    barRods: [
                                                      BarChartRodData(
                                                          toY: 4,
                                                          width: 4
                                                      )
                                                    ]
                                                ),
                                                BarChartGroupData(
                                                  x: 2,
                                                    barRods: [
                                                      BarChartRodData(
                                                          toY: 3,
                                                          width: 4
                                                      )
                                                    ]
                                                ),
                                                BarChartGroupData(
                                                  x: 3,
                                                    barRods: [
                                                      BarChartRodData(
                                                          toY: 5,
                                                          width: 4
                                                      )
                                                    ]
                                                ),
                                                BarChartGroupData(
                                                  x: 4,
                                                    barRods: [
                                                      BarChartRodData(
                                                          toY: 5,
                                                          width: 4
                                                      )
                                                    ]
                                                ),
                                                BarChartGroupData(
                                                  x: 5,
                                                    barRods: [
                                                      BarChartRodData(
                                                          toY: 6,
                                                          width: 4
                                                      )
                                                    ]
                                                ),
                                                BarChartGroupData(
                                                  x: 6,
                                                  barRods: [
                                                    BarChartRodData(
                                                        toY: 7,
                                                        width: 4
                                                    )
                                                  ]
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            height: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.grey[300]!,
                              ),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text("Weight"),
                                    Icon(Icons.keyboard_arrow_right),
                                  ],
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "08,11,20 - 01,02,21",
                                              style: TextStyle(
                                                color: Colors.grey[600],
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            const Spacer(),
                                            const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "85.2",
                                                    style: TextStyle(color: Colors.cyanAccent, fontSize: 24),
                                                  ),
                                                  TextSpan(
                                                    text: "kg",
                                                    style: TextStyle(
                                                      color: Colors.cyanAccent,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Text(
                                              "Today",
                                              style: TextStyle(
                                                color: Colors.blueAccent,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Expanded(
                                        child: Placeholder(),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
