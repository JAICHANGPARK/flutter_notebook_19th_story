import 'package:flutter/material.dart';

class StakingMainPage extends StatefulWidget {
  const StakingMainPage({Key? key}) : super(key: key);

  @override
  State<StakingMainPage> createState() => _StakingMainPageState();
}

class _StakingMainPageState extends State<StakingMainPage> with SingleTickerProviderStateMixin {
  int _tabIndex = 0;
  PageController _pageController = PageController();

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
                            VerticalDivider(
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
                            VerticalDivider(
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
                                    SizedBox(
                                      height: 24,
                                    ),
                                    Text("Generate tokens"),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Initial Points for Staking"),
                                        Text("500 points"),
                                      ],
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
                            Center(
                              child: Text("Page1"),
                            ),
                            Center(
                              child: Text("Page2"),
                            )
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
                  child: const Center(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
