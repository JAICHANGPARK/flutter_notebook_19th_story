import 'package:cached_network_image/cached_network_image.dart';
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
                        const Text(
                          "Energy usage",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.bolt,
                              color: kShaAccents,
                              size: 42,
                            ),
                            const Text(
                              "43.6",
                              style: const TextStyle(
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
                        const Spacer(),
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
                        const SizedBox(
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
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
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
                                    "Air purifier",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
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
                                    height: 42,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 8,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: kShaAccents,
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            child: const Center(
                                              child: const Icon(Icons.power_settings_new),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.grey[300],
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            child: const Center(
                                              child: const Icon(Icons.more_horiz),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                          Expanded(
                              child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Security camera",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    "Living room",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Container(
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.teal,
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                        image: CachedNetworkImageProvider(
                                            "https://cdn.pixabay.com/photo/2016/11/18/17/20/living-room-1835923_960_720.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 42,
                                    child: Row(
                                      children: [
                                        // Expanded(
                                        //   flex: 8,
                                        //   child: Container(
                                        //     decoration: BoxDecoration(
                                        //       color: kShaAccents,
                                        //       borderRadius: BorderRadius.circular(12),
                                        //     ),
                                        //     child: const Center(
                                        //       child: const Icon(Icons.power_settings_new),
                                        //     ),
                                        //   ),
                                        // ),
                                        // const SizedBox(
                                        //   width: 4,
                                        // ),
                                        Expanded(
                                          flex: 4,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.grey[300],
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            child: const Center(
                                              child: const Icon(Icons.more_horiz),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                        ],
                      ),
                    ),
                    Container(
                      height: 72,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add),
                          color: Colors.white,
                        ),
                      ),
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
