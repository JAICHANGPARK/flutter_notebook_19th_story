import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ECourseHomePage extends StatefulWidget {
  const ECourseHomePage({Key? key}) : super(key: key);

  @override
  State<ECourseHomePage> createState() => _ECourseHomePageState();
}

class _ECourseHomePageState extends State<ECourseHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 16, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Temukan Kursus",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            "Online Sesuai Minat",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Container(
                        height: 200,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              right: 0,
                              top: 24,
                              bottom: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                                padding: EdgeInsets.only(
                                  top: 42
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      "Lanjukan belajar",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.white,
                                    ),
                                    Row(
                                      children: [

                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              right: 16,
                              top: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Cari kursus online disini...",
                                    icon: Icon(
                                      Icons.search,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 84,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.pink,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              height: 64,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Ionicons.home_outline,
                    ),
                    iconSize: 28,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Ionicons.list_circle_outline,
                    ),
                    iconSize: 28,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Ionicons.bag_handle_outline,
                    ),
                    iconSize: 28,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Ionicons.person_outline,
                    ),
                    iconSize: 28,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
