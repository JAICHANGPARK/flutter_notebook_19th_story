import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FitnessDiscoverWidget extends StatelessWidget {
  const FitnessDiscoverWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 0, left: 8, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: CachedNetworkImageProvider(
                      "https://cdn.pixabay.com/photo/2017/08/06/12/52/woman-2592247_960_720.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Get Fit",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Challenge",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "by Chloe Ting",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 42,
            decoration: const BoxDecoration(),
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[100],
                        borderRadius: BorderRadius.circular(32),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 4,
                      ),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.local_fire_department,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "389 kcal",
                          ),
                          SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: Text(
              "Exercises",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(
                      Icons.fitness_center,
                    ),
                    iconColor: Colors.blue,
                    title: Text("Strength training"),
                    subtitle: Text("10 exercises 30 min"),
                    trailing: Icon(Icons.pause),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 4,
                  ),
                  ListTile(
                    leading: Icon(Icons.monitor_heart_outlined),
                    title: Text("Cardio"),
                    subtitle: Text("4 exercises 15 min"),
                    iconColor: Colors.blue,
                    trailing: Icon(Icons.play_arrow),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 4,
                  ),
                  ListTile(
                    leading: Icon(Icons.all_inclusive),
                    title: Text("Jumping rope"),
                    subtitle: Text("4 exercises 15 min"),
                    iconColor: Colors.blue,
                    trailing: Icon(Icons.play_arrow),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Coach Recommendations"),
              TextButton(
                onPressed: () {},
                child: const Text("View All"),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Container(
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
