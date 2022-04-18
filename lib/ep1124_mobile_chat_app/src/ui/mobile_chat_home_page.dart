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
                        style: TextStyle(
                          color: Colors.grey,
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
                    padding: const EdgeInsets.only(top: 16, left: 16, bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Status",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Expanded(
                          child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 8,
                              crossAxisSpacing: 8,
                              childAspectRatio: 6 / 22,
                            ),
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  const CircleAvatar(),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Best friend",
                                          style: TextStyle(color: Colors.white, fontSize: 12),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "1 minutes ago",
                                          style: TextStyle(color: Colors.grey, fontSize: 12),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        )
                      ],
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
                  children: [
                    const Text(
                      "Messages",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: SizedBox(
                        height: 42,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Personal",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                                child: TextButton(
                              onPressed: () {},
                              child: const Text("Group"),
                            )),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
                        separatorBuilder: (context, _) => const Divider(
                          color: Colors.grey,
                        ),
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Container(
                                height: 48,
                                width: 48,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: CircleAvatar(),
                                    ),
                                    Positioned(
                                      right: 0,
                                      bottom: 0,
                                      child: Container(
                                        height: 16,
                                        width: 16,
                                        decoration: BoxDecoration(
                                          color: Colors.green,

                                          shape: BoxShape.circle
                                        ),
                                      ),

                                    )
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                        itemCount: 8,
                      ),
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
