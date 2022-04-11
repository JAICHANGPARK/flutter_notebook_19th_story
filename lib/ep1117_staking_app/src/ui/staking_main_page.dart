import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:countup/countup.dart';

class StakingMainPage extends StatefulWidget {
  const StakingMainPage({Key? key}) : super(key: key);

  @override
  State<StakingMainPage> createState() => _StakingMainPageState();
}

class _StakingMainPageState extends State<StakingMainPage> with SingleTickerProviderStateMixin {
  int _tabIndex = 0;
  PageController _pageController = PageController();
  TextEditingController _textEditingController = TextEditingController(text: "1,214 VENT");
  TextEditingController _textEditingController2 = TextEditingController(text: "15,628 VENT");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          "vent",
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Staking Vent",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Center(
                      child: Text(
                        'Connect wallet',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 48,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _tabIndex = 0;
                                  _pageController.jumpToPage(_tabIndex);
                                });
                              },
                              child: Text(
                                "Staking",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: _tabIndex == 0 ? Colors.black : Colors.grey,
                                ),
                              ),
                            ),
                            const VerticalDivider(
                              color: Colors.grey,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _tabIndex = 1;
                                  _pageController.jumpToPage(_tabIndex);
                                });
                              },
                              child: Text(
                                "Unstaking",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: _tabIndex == 1 ? Colors.black : Colors.grey,
                                ),
                              ),
                            ),
                            const VerticalDivider(
                              color: Colors.grey,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _tabIndex = 2;
                                  _pageController.jumpToPage(_tabIndex);
                                });
                              },
                              child: Text(
                                "Claiming",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: _tabIndex == 2 ? Colors.black : Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: PageView(
                          controller: _pageController,
                          onPageChanged: (index) {
                            setState(() {
                              _tabIndex = index;
                            });
                          },
                          children: [
                            Column(
                              children: [
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    const Text("Generate tokens"),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      child: TextField(
                                        controller: _textEditingController,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                        decoration: const InputDecoration(
                                          focusedBorder: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 16),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Initial Points for Staking",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            "500 points",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 16),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Point generated APY",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            "200 points",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 16),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Past 30d Average",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            "198 points",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 16),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Liquidation Penalty",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            "-",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  child: const Center(
                                    child: Text(
                                      "Stake tokens",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    const Text("Unstake tokens"),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      child: TextField(
                                        controller: _textEditingController2,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                        decoration: const InputDecoration(
                                          focusedBorder: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 16),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Initial Points for Unstaking",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            "500 points",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 16),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Point generated APY",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            "200 points",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Divider(
                                      color: Colors.grey,
                                      height: 48,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 24),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Tokens available",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            "44,954",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  child: const Center(
                                    child: Text(
                                      "Unstake tokens",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 24),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Tokens available",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            "1,214",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Divider(
                                      color: Colors.grey,
                                      height: 48,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 16),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Initial Points for Unstaking",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            "500 points",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 16),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Point generated APY",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            "200 points",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  child: const Center(
                                    child: Text(
                                      "Claim tokens",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Staking / Generating Overview",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.yellow,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Countup(
                              begin: 0,
                              end: 3553201,
                              separator: ",",
                              duration: const Duration(
                                seconds: 5,
                              ),
                              style: const TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              " /\$VENT staked",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                            child: Row(
                              children: [
                                const Text("Last Week"),
                                const Icon(
                                  Icons.keyboard_arrow_down,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                            child: Row(
                              children: [
                                const Text("Staked"),
                                const Icon(
                                  Icons.keyboard_arrow_down,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: LineChart(
                            LineChartData(lineBarsData: [
                              LineChartBarData(
                                spots: List.generate(
                                  10,
                                  (index) => FlSpot(
                                    index.toDouble(),
                                    index.toDouble(),
                                  ),
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                    ],
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
