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
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                        "https://cdn.pixabay.com/photo/2017/08/06/12/52/woman-2592247_960_720.jpg"),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 42,
            decoration: BoxDecoration(),
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                      child: Row(
                        children: [
                          CircleAvatar(),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "389 kcal",
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: Text(
              "Exercises",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Coach Recommendations"),
              TextButton(
                onPressed: () {},
                child: Text("View All"),
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
