import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1136_business_assistance_app/src/model/cashflow.dart';
import 'package:flutter_notebook_19th_story/ep1136_business_assistance_app/src/provider/cashflows_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BizMainPage extends StatefulWidget {
  const BizMainPage({Key? key}) : super(key: key);

  @override
  State<BizMainPage> createState() => _BizMainPageState();
}

class _BizMainPageState extends State<BizMainPage> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        foregroundColor: Colors.white,
        child: const Icon(Icons.menu),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Company finance",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 48,
                child: TabBar(
                  controller: tabController,
                  isScrollable: true,
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: const BubbleTabIndicator(
                    indicatorHeight: 24,
                    indicatorColor: Colors.black,
                    tabBarIndicatorSize: TabBarIndicatorSize.tab,
                  ),
                  tabs: const [
                    Tab(
                      text: "overview",
                    ),
                    Tab(
                      text: "accounts",
                    ),
                    Tab(
                      text: "cashflows",
                    ),
                    Tab(
                      text: "indicators",
                    ),
                    Tab(
                      text: "clients",
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(
                controller: tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 2.3,
                          child: PageView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Container(
                                  height: MediaQuery.of(context).size.height / 2.3,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        right: 8,
                                        top: 8,
                                        child: CircleAvatar(
                                          radius: 16,
                                          backgroundColor: Colors.grey[200],
                                          foregroundColor: Colors.grey,
                                          child: const Icon(Icons.arrow_forward),
                                        ),
                                      ),
                                      Positioned(
                                        left: 8,
                                        top: 8,
                                        right: 8,
                                        bottom: 8,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "revenue",
                                                  ),
                                                  TextSpan(
                                                    text: "today",
                                                    style: TextStyle(
                                                      color: Colors.blue,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                const Text(
                                                  "\$135,583",
                                                  style: TextStyle(fontSize: 34),
                                                ),
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                CircleAvatar(
                                                  radius: 8,
                                                  backgroundColor: Colors.green[100],
                                                  foregroundColor: Colors.green,
                                                  child: const Icon(
                                                    Icons.arrow_forward,
                                                    size: 12,
                                                  ),
                                                ),
                                                const Text(
                                                  "4.4%",
                                                  style: TextStyle(
                                                    color: Colors.green,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                            Expanded(
                                              child: LineChart(
                                                LineChartData(
                                                  borderData: FlBorderData(
                                                    show: false,
                                                  ),
                                                  gridData: FlGridData(
                                                    show: true,
                                                    drawVerticalLine: false,
                                                  ),
                                                  lineBarsData: [
                                                    LineChartBarData(
                                                      show: true,
                                                      spots: List.generate(
                                                        7,
                                                        (index) => FlSpot(
                                                          index.toDouble(),
                                                          index.toDouble(),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Container(
                                  height: MediaQuery.of(context).size.height / 2.3,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("financial results"),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("\$2,343,538", style: TextStyle(
                                      fontSize: 24,
                                    ),),
                                    Text("total"),
                                    SizedBox(height: 16,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("main"),
                                        Text("\$2,343,538"),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("main"),
                                          Text("\$2,343,538"),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("main"),
                                        Text("\$2,343,538"),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 4,),
                              SizedBox(
                                height: 160,
                                child: Row(
                                  children: [
                                    Expanded(child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                    )),
                                    SizedBox(width: 4,),
                                    Expanded(child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                    ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
                    child: Consumer(builder: (context, ref, _) {
                      AsyncValue<CashFlowItems> items = ref.watch(cashFlowProvider);
                      return items.when(data: (item) {
                        return Column(
                          children: [
                            Container(
                              height: 84,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 8,
                                    top: 8,
                                    child: Text(
                                      "${item.items?[0].title ?? ""}",
                                    ),
                                  ),
                                  Positioned(
                                    right: 8,
                                    bottom: 8,
                                    child: Text(
                                      "\$${item.items?[0].price ?? ""}",
                                      style: const TextStyle(
                                        fontSize: 38,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Expanded(
                              child: GridView.builder(
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 4,
                                  mainAxisSpacing: 4,
                                ),
                                itemCount: (item.items?.length ?? 1) - 1,
                                itemBuilder: (context, index) {
                                  var _item = item.items?[index + 1];
                                  return Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 8,
                                          top: 8,
                                          child: Text("${_item?.title ?? ""} "),
                                        ),
                                        Positioned(
                                          right: 8,
                                          bottom: 8,
                                          child: Text(
                                            "\$${_item?.price ?? ""} ",
                                            style: const TextStyle(
                                              fontSize: 32,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        );
                      }, error: (e, s) {
                        return Center(
                          child: Text("$e, $s"),
                        );
                      }, loading: () {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      });
                    }),
                  ),
                  Container(),
                  Container(),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
