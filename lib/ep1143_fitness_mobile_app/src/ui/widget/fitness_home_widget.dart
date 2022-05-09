import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class FitnessHomeWidget extends StatefulWidget {
  const FitnessHomeWidget({Key? key}) : super(key: key);

  @override
  State<FitnessHomeWidget> createState() => _FitnessHomeWidgetState();
}

class _FitnessHomeWidgetState extends State<FitnessHomeWidget> {
  PageController _pageController = PageController(initialPage: 1, viewportFraction: 0.5);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 260,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Text(
                "Weekly Statistics",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  children: [
                    SleekCircularSlider(),
                    Stack(
                      children: [
                        Positioned(
                          child: SleekCircularSlider(
                            appearance: CircularSliderAppearance(
                              angleRange: 360.0,
                              startAngle: 0,
                              customWidths: CustomSliderWidths(progressBarWidth: 4),
                              customColors: CustomSliderColors(
                                progressBarColor: Colors.cyan,
                              ),
                            ),
                            max: 100,
                            min: 0,
                            initialValue: 64,
                          ),
                        ),
                      ],
                    ),
                    SleekCircularSlider(),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Overview"),
                  TextButton(
                    onPressed: () {},
                    child: const Text("View All"),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.local_fire_department,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "2,900",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Kcal Burnt",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.timer,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "28h",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Total Time",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.fitness_center,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "293",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Exercises",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Activity",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    padding: const EdgeInsets.symmetric(vertical: 4),
                                    child: const Center(
                                      child: Text(
                                        "Week",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(),
                                  child: const Center(
                                    child: Text(
                                      "Month",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: SizedBox(
                        height: 170,
                        child: BarChart(
                          BarChartData(
                            borderData: FlBorderData(
                              show: false,
                            ),
                            titlesData: FlTitlesData(
                              rightTitles: AxisTitles(),
                              topTitles: AxisTitles(),
                            ),
                            gridData: FlGridData(
                              show: true,
                              drawVerticalLine: false,
                              horizontalInterval: 4,
                            ),
                            maxY: 20,
                            barGroups: [
                              BarChartGroupData(
                                x: 0,
                                barRods: [
                                  BarChartRodData(
                                    toY: 11,
                                    color: Colors.indigo,
                                    width: 12,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  BarChartRodData(
                                    toY: 5,
                                    width: 12,
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 1,
                                barRods: [
                                  BarChartRodData(
                                    toY: 5,
                                    color: Colors.indigo,
                                    width: 12,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  BarChartRodData(
                                    toY: 6,
                                    width: 12,
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 2,
                                barRods: [
                                  BarChartRodData(
                                    toY: 11,
                                    color: Colors.indigo,
                                    width: 12,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  BarChartRodData(
                                    toY: 4,
                                    width: 12,
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 3,
                                barRods: [
                                  BarChartRodData(
                                    toY: 8,
                                    color: Colors.indigo,
                                    width: 12,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  BarChartRodData(
                                    toY: 4,
                                    width: 12,
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 4,
                                barRods: [
                                  BarChartRodData(
                                    toY: 3,
                                    color: Colors.indigo,
                                    width: 12,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  BarChartRodData(
                                    toY: 4,
                                    width: 12,
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 5,
                                barRods: [
                                  BarChartRodData(
                                    toY: 10,
                                    color: Colors.grey[100],
                                    width: 12,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  BarChartRodData(
                                    toY: 10,
                                    width: 12,
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 6,
                                barRods: [
                                  BarChartRodData(
                                    toY: 10,
                                    color: Colors.grey[100],
                                    width: 12,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  BarChartRodData(
                                    toY: 10,
                                    width: 12,
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.indigo,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Biking",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Running",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
