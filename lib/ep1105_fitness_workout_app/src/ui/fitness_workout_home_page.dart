import 'package:flutter/material.dart';

class FitnessWorkoutHomePage extends StatefulWidget {
  const FitnessWorkoutHomePage({Key? key}) : super(key: key);

  @override
  State<FitnessWorkoutHomePage> createState() => _FitnessWorkoutHomePageState();
}

class _FitnessWorkoutHomePageState extends State<FitnessWorkoutHomePage>
with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: Text("Live workouts"),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ],
              bottom: TabBar(
                controller: _tabController,
                tabs: [
                  Tab(text: "Live show"),
                  Tab(text: "Watch Later",),
                ],
              ),
            ),

          ];
        },
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 240,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 240,
                decoration: BoxDecoration(
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
