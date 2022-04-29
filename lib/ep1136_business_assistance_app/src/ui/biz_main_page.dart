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
                  labelColor: Colors.black,
                  tabs: [
                    const Tab(
                      text: "overview",
                    ),
                    const Tab(
                      text: "accounts",
                    ),
                    const Tab(
                      text: "cashflows",
                    ),
                    const Tab(
                      text: "indicators",
                    ),
                    const Tab(
                      text: "clients",
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(
                controller: tabController,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 2.3,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 2,
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                        )
                      ],
                    ),
                  ),
                  Container(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
                    child: Consumer(builder: (context, ref, _) {
                      AsyncValue<CashFlowItems> items = ref.watch(cashFlowProvider);
                      return items.when(
                          data: (item) {},
                          error: (e, s) {
                            return Center(
                              child: Text("$e, $s"),
                            );
                          },
                          loading: () {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          });
                      return Column(
                        children: [
                          Container(
                            height: 84,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Stack(
                              children: const [
                                Positioned(
                                  left: 8,
                                  top: 8,
                                  child: Text("total"),
                                ),
                                Positioned(
                                  right: 8,
                                  bottom: 8,
                                  child: Text(
                                    "\$2,343,538",
                                    style: TextStyle(
                                      fontSize: 38,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Expanded(
                            child: GridView.builder(
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 4,
                                mainAxisSpacing: 4,
                              ),
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Stack(
                                    children: const [
                                      Positioned(
                                        left: 8,
                                        top: 8,
                                        child: Text("total"),
                                      ),
                                      Positioned(
                                        right: 8,
                                        bottom: 8,
                                        child: Text(
                                          "\$2,343,538",
                                          style: TextStyle(
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
