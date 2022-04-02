import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1109_smart_home_app/src/utils/theme.dart';

class SmartHomeMainPage extends StatelessWidget {
  const SmartHomeMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kShaPrimary,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: kShaAccents,
              ),
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "user12345",
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
                flex: 4,
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Energy usage",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.bolt,
                              color: kShaAccents,
                              size: 42,
                            ),
                            Text(
                              "43.6",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 48,
                              ),
                            ),
                            Text(
                              " kWh",
                              style: TextStyle(
                                color: kShaSecondary,
                                fontSize: 48,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Humidity",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "74%",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Temperature",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "29C",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                    // Placeholder(
                    //   color: kShaAccents,
                    // ),
                    )),
            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  color: kShaSecondary,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16),
                  ),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const[
                        Text(
                          "House",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 32,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Text(
                          "2 devices",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 240,
                      color: Colors.pink,
                      child: Row(
                        children: [
                          Expanded(
                              child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Air purlfler",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const  Text(
                                    "Bedroom",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "0",
                                        style: TextStyle(
                                          fontSize: 64,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        "14",
                                        style: TextStyle(
                                          fontSize: 64,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 48,
                                    child: Row(
                                      children: const[
                                        Expanded(child: Placeholder()),
                                        Expanded(child: Placeholder()),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                          const  Expanded(child: Placeholder()),
                        ],
                      ),
                    ),
                    Container(
                      height: 72,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
