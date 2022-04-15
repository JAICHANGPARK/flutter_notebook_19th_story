import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CryptoInvestPage extends StatefulWidget {
  const CryptoInvestPage({Key? key}) : super(key: key);

  @override
  State<CryptoInvestPage> createState() => _CryptoInvestPageState();
}

class _CryptoInvestPageState extends State<CryptoInvestPage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text("Invest"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.tune),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Bitcoin",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "\$697.789",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.arrow_drop_up,
                        color: Colors.grey,
                      ),
                      Text(
                        " 17.75% this week",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: LineChart(
                        LineChartData(
                          lineBarsData: [
                            LineChartBarData(
                              spots: _lineData,
                              color: Colors.green,
                              dotData: FlDotData(
                                show: false,
                              ),
                              barWidth: 5,
                            ),
                          ],
                          gridData: FlGridData(
                            show: true,
                            drawVerticalLine: false,
                            getDrawingHorizontalLine: (v) {
                              return FlLine(
                                color: Colors.grey[400],
                                strokeWidth: 1,
                              );
                            },
                            horizontalInterval: 0.8,
                          ),
                          titlesData: FlTitlesData(
                            bottomTitles: AxisTitles(),
                            rightTitles: AxisTitles(),
                            topTitles: AxisTitles(
                              // axisNameSize: 0,
                              sideTitles: SideTitles(
                                  reservedSize: 64,
                                  showTitles: true,
                                  getTitlesWidget: (v, _) {
                                    if(v == 0.0){
                                      return Text("7:30");
                                    }
                                    else if(v == 1.0){
                                      return Text("1:40");
                                    }
                                    else if(v == 2.0){
                                      return Text("6:40");
                                    }
                                    else if(v == 3.0){
                                      return Text("8:30");
                                    }
                                    else if(v == 4.0){
                                      return Text("10:40");
                                    }
                                    else if(v == 5.0){
                                      return Text("10:40");
                                    }
                                    else if(v == 6.0){
                                      return Text("10:40");
                                    }
                                    else{
                                      return Text("??:??");
                                    }
                                  }),
                            ),
                          ),
                          borderData: FlBorderData(
                            show: false,
                          ),
                          maxY: 43,
                          minY: 39.0,
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  TabBar(
                      labelColor: Colors.black,
                      indicatorColor: Colors.teal,
                      indicatorSize: TabBarIndicatorSize.label,
                      controller: _tabController,
                      tabs: const [
                        Tab(
                          text: "1h",
                        ),
                        Tab(
                          text: "1d",
                        ),
                        Tab(
                          text: "7d",
                        ),
                        Tab(
                          text: "30d",
                        ),
                        Tab(
                          text: "1y",
                        ),
                        Tab(
                          text: "all",
                        )
                      ]),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 72,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("ADA"),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Cardano",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "\$0.08882934",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.green,
                                ),
                                Text(
                                  "11.83%",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 84,
              decoration: const ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.black,
              ),
              child: const Center(
                child: Text(
                  "Trade Bitcoin",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  late TabController _tabController;

  List<FlSpot> _lineData = [
    FlSpot(0.0, 41.0),
    FlSpot(1.0, 41.8),
    FlSpot(2.0, 40.5),
    FlSpot(3.0, 42.3),
    FlSpot(4.0, 42.0),
    FlSpot(5.0, 42.4),
    FlSpot(6.0, 40.2),
    FlSpot(7.0, 42.1),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }
}
