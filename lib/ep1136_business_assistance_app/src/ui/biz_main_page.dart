import 'package:flutter/material.dart';

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
        child: const Icon(Icons.menu),
        foregroundColor: Colors.white,
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
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
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
                                  child: Text("total"),
                                  left: 8,
                                  top: 8,
                                ),
                                Positioned(
                                  child: Text(
                                    "\$2,343,538",
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  right: 8,
                                  bottom: 8,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
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
