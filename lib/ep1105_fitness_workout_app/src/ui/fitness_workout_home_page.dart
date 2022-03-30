import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1105_fitness_workout_app/src/ui/component/live_show_card.dart';
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
                    LiveShowCard(pageController: _pageController!,),
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
                      Expanded(
                        flex: 6,
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                  "https://cdn.pixabay.com/photo/2017/11/18/05/00/woman-2959213_960_720.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
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
                              Row(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Text(
                                    "Dream Walker",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const Text(
                                    "  Yoga Instructor at Flutter Gym",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
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
