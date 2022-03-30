import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FitnessWorkoutHomePage extends StatefulWidget {
  const FitnessWorkoutHomePage({Key? key}) : super(key: key);

  @override
  State<FitnessWorkoutHomePage> createState() => _FitnessWorkoutHomePageState();
}

class _FitnessWorkoutHomePageState extends State<FitnessWorkoutHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  PageController? _pageController;
  int _bottomTabIndex = 0;

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
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 16),
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
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2015/07/02/10/23/training-828741_960_720.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          right: 16,
                          bottom: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 84,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 7,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Premium",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              const Text(
                                "Morning workouts",
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                "with fitness specialist",
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.videocam,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    "Live Now",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text(
                                    "120 watching",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 28,
                                    width: 28,
                                    decoration: BoxDecoration(
                                      color: Colors.pink,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Unknown Specialist",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "Pro trainer",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Center(
                                child: SmoothPageIndicator(
                                  controller: _pageController!,
                                  count: 3,
                                  effect: const ExpandingDotsEffect(
                                      dotHeight: 8,
                                      dotWidth: 16,
                                      strokeWidth: 8,
                                      dotColor: Colors.grey,
                                      activeDotColor: Colors.purpleAccent),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 16,
                          bottom: 48,
                          child: Container(
                            height: 64,
                            width: 64,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.grey[200]!,
                              ),
                            ),
                            padding: const EdgeInsets.all(4),
                            child: const CircleAvatar(
                              backgroundColor: Colors.deepPurpleAccent,
                              foregroundColor: Colors.white,
                              child: Icon(Icons.play_arrow),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Discover More",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            ...List.generate(
              10,
              (index) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 240,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Expanded(flex: 6, child: Placeholder()),
                      Expanded(
                          flex: 4,
                          child: Column(
                            children: [
                              Text(
                                "Yoga training with Dream",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.videocam,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    "Live Now",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text(
                                    "120 watching",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),

                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: 72,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _bottomTabIndex = 0;
                    });
                  },
                  icon: const Icon(Icons.home),
                  color: _bottomTabIndex == 0 ? Colors.purple : Colors.grey,
                ),
                CircleAvatar(
                  radius: 3,
                  backgroundColor: _bottomTabIndex == 0 ? Colors.purple : Colors.black,
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _bottomTabIndex = 1;
                    });
                  },
                  icon: const Icon(Icons.bar_chart),
                  color: _bottomTabIndex == 1 ? Colors.purple : Colors.grey,
                ),
                CircleAvatar(
                  radius: 3,
                  backgroundColor: _bottomTabIndex == 1 ? Colors.purple : Colors.black,
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _bottomTabIndex = 2;
                    });
                  },
                  icon: const Icon(Icons.fitness_center),
                  color: _bottomTabIndex == 2 ? Colors.purple : Colors.grey,
                ),
                CircleAvatar(
                  radius: 3,
                  backgroundColor: _bottomTabIndex == 2 ? Colors.purple : Colors.black,
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _bottomTabIndex = 3;
                    });
                  },
                  icon: const Icon(Icons.list_alt),
                  color: _bottomTabIndex == 3 ? Colors.purple : Colors.grey,
                ),
                CircleAvatar(
                  radius: 3,
                  backgroundColor: _bottomTabIndex == 3 ? Colors.purple : Colors.black,
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _bottomTabIndex = 4;
                    });
                  },
                  icon: const Icon(Icons.person),
                  color: _bottomTabIndex == 4 ? Colors.purple : Colors.grey,
                ),
                CircleAvatar(
                  radius: 3,
                  backgroundColor: _bottomTabIndex == 4 ? Colors.purple : Colors.black,
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
