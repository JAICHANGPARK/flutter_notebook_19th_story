import 'package:flutter/material.dart';

class EcourseDetailPage extends StatefulWidget {
  const EcourseDetailPage({Key? key}) : super(key: key);

  @override
  State<EcourseDetailPage> createState() => _EcourseDetailPageState();
}

class _EcourseDetailPageState extends State<EcourseDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Column(
        children: [
          Container(
            height: 280,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            padding: EdgeInsets.only(top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_outlined),
                  color: Colors.white,
                ),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Container(
                    color: Colors.blue,
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.fromLTRB(
                      24,
                      24,
                      48,
                      24,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Kelas Cara Membuat Design System",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        Row(
                          children: [Text("30%")],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 24, bottom: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                              ),
                              padding: EdgeInsets.all(8),
                              child: Center(
                                child: Text(
                                  "${index + 1}",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Pengenalan Materi",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "4:20 Menit",
                                      style: TextStyle(),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_right_alt,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: 10,
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
