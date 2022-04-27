import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1134_podcast_app/src/model/top_category.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PodcastHomePage extends StatefulWidget {
  const PodcastHomePage({Key? key}) : super(key: key);

  @override
  State<PodcastHomePage> createState() => _PodcastHomePageState();
}

class _PodcastHomePageState extends State<PodcastHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 16,
              top: 0,
              bottom: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8, bottom: 16, top: 16),
                    child: Row(
                      children: [
                        Text(
                          "Hi Dream 👋",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.purple.withOpacity(0.2),
                          foregroundColor: Colors.purple,
                          child: Icon(
                            Icons.notifications_outlined,
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "Top Categories",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 54,
                    // decoration: BoxDecoration(
                    //   color: Colors.blue,
                    // ),
                    child: Consumer(
                      builder: (context, ref, _) {

                        return ListView.builder(
                            itemCount: categories.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: (){

                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey[200]!,
                                      ),
                                      borderRadius: BorderRadius.circular(4)
                                    ),
                                    child: Row(
                                      children: [
                                        Text("${categories[index].icon}"),
                                        Text("${categories[index].title}"),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      }
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "More to Discover",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  primary: Colors.grey,
                                ),
                                child: const Text(
                                  "View all",
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 200,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            height: 48,
                            endIndent: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Recently Listened",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  primary: Colors.grey,
                                ),
                                child: Text(
                                  "View all",
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 200,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            height: 48,
                            endIndent: 16,
                          ),
                          Container(
                            height: 200,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 24,
              right: 24,
              bottom: 16,
              child: Container(
                height: 64,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.2), offset: Offset(0, 4), blurRadius: 2, spreadRadius: 2)
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
