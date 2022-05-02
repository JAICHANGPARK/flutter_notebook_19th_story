import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1139_office_meeting_app/src/ui/meeting_todays_widget.dart';

class OfficeMainPage extends StatefulWidget {
  const OfficeMainPage({Key? key}) : super(key: key);

  @override
  State<OfficeMainPage> createState() => _OfficeMainPageState();
}

class _OfficeMainPageState extends State<OfficeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: DefaultTabController(
            length: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Row(
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blueAccent,
                        ),
                        child: const Icon(
                          Icons.keyboard_arrow_left,
                          color: Colors.white,
                        ),
                      ),
                      const Expanded(
                        child: Center(
                          child: Text(
                            "Meeting Schedule",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Hello Dreamwalker",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Create Meeting",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Text(
                  "Lets Get Started",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.blueAccent,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  tabs: [
                    Tab(
                      text: "Todays",
                    ),
                    Tab(
                      text: "Tommorows",
                    ),
                    Tab(
                      text: "Weekly",
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      const MeetingTodaysWidget(),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 94,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Container(
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.purpleAccent,
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                              image: CachedNetworkImageProvider(
                                "https://cdn.pixabay.com/photo/2021/12/01/19/53/business-6839039_960_720.jpg",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "New Virtual Meetup",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Mobile App New Trends 2022",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[300],
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              child: const Center(
                                child: Text(
                                  "Subscribe Now",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
