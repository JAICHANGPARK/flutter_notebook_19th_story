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
                    style: const TextStyle(
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
                  const Expanded(
                      child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: const Placeholder(),
                  )),
                  Divider(
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
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "\$0.08882934",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
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

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }
}
