import 'package:flutter/cupertino.dart';
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
                              SizedBox(height: 4,),
                              const Text(
                                "Morning workouts",
                                style: const TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(height: 4,),
                              const Text(
                                "with fitness specialist",
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(height: 4,),
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
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text(
                                    "120 watching",
                                    style: TextStyle(
                                      color: Colors.white,
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
                                      children: [
                                        Text(
                                          "Unknown Specialist",
                                          style: TextStyle(color: Colors.white, fontSize: 11),
                                        ),
                                        SizedBox(height: 4,),
                                        Text(
                                          "Pro trainer",
                                          style: TextStyle(color: Colors.white, fontSize: 11),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
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
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 240,
                  decoration: const BoxDecoration(
                    color: Colors.red,
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
                  onPressed: () {},
                  icon: const Icon(Icons.home),
                  color: Colors.grey,
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bar_chart),
                  color: Colors.grey,
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.fitness_center),
                  color: Colors.purple,
                ),
                const CircleAvatar(
                  radius: 3,
                  backgroundColor: Colors.purple,
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.list_alt),
                  color: Colors.grey,
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person),
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
