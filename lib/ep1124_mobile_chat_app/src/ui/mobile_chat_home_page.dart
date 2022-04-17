import 'package:flutter/material.dart';

class MobileChatHomePage extends StatefulWidget {
  const MobileChatHomePage({Key? key}) : super(key: key);

  @override
  State<MobileChatHomePage> createState() => _MobileChatHomePageState();
}

class _MobileChatHomePageState extends State<MobileChatHomePage> {
  int _bottomTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: const [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Wang",
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              TextSpan(
                                text: "saff",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Hello, ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                              TextSpan(
                                text: "Dreamwalker",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                          radius: 14,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Container(
                      height: 54,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: const TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: "search ..",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(16),
                        topLeft: Radius.circular(16),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: 4,
              right: 4,
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16),
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Messages",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: SizedBox(
                        height: 64,
                        child: ColoredBox(
                          color: Colors.red,
                          child: Center(),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Placeholder(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomTabIndex,
        onTap: (idx) {
          setState(() {
            _bottomTabIndex = idx;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.send), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Container(
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
          child: const Icon(
            Icons.edit,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
