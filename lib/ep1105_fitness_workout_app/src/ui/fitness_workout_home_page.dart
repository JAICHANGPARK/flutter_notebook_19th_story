import 'package:flutter/material.dart';

class FitnessWorkoutHomePage extends StatefulWidget {
  const FitnessWorkoutHomePage({Key? key}) : super(key: key);

  @override
  State<FitnessWorkoutHomePage> createState() => _FitnessWorkoutHomePageState();
}

class _FitnessWorkoutHomePageState extends State<FitnessWorkoutHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  PageController? _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              title: const Text("Live workouts"),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ],
              bottom: TabBar(
                controller: _tabController,
                indicatorColor: Colors.deepPurpleAccent,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 16),
                tabs: const [
                  Tab(text: "Live show"),
                  Tab(
                    text: "Watch Later",
                  ),
                ],
              ),
            ),
          ];
        },
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 320,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                child: PageView(
                  controller: _pageController,
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Container(),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 240,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
