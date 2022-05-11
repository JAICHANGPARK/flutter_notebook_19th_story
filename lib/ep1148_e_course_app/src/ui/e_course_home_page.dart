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
                                padding: EdgeInsets.only(top: 42, left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Lanjukan belajar",
                                      style: TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                    Divider(
                                      color: Colors.white,
                                      height: 42,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 52,
                                          width: 52,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Cara Membuat Design System",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 16,
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "30%",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 12,
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        height: 4,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white.withOpacity(0.4),
                                                          borderRadius: BorderRadius.circular(4),
                                                        ),
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 84,
                                                              height: 4,
                                                              decoration: BoxDecoration(
                                                                color: Colors.lightGreenAccent,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        )
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
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Container(
                        height: 58,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                        ),
                        padding: EdgeInsets.all(6),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text("Gratis"),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Berbayar",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
