import 'package:flutter/material.dart';

class ClassHotelPage extends StatefulWidget {
  const ClassHotelPage({Key? key}) : super(key: key);

  @override
  State<ClassHotelPage> createState() => _ClassHotelPageState();
}

class _ClassHotelPageState extends State<ClassHotelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Stack(
          children: [
            const Positioned(
                left: 0,
                right: 0,
                top: 24,
                child: Center(
                  child: Text(
                    "Hotels",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 38,
                        width: 4,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(3),
                            bottomRight: Radius.circular(3),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      const Text(
                        "Nearby Hotels",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text("See All"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 280,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: 420,
                          child: Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text("The Jefferson Hotel"),
                                        Icon(
                                          Icons.star,
                                          size: 14,
                                          color: Colors.yellowAccent,
                                        ),
                                        Text("4.0")
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "\$205",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Icon(
                                          Icons.location_on,
                                          size: 14,
                                          color: Colors.blue,
                                        ),
                                        Text("Map")
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 38,
                        width: 4,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(3),
                            bottomRight: Radius.circular(3),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      const Text(
                        "Other Places",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text("See All"),
                      ),
                    ],
                  ),
                  const Expanded(child: Placeholder())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
