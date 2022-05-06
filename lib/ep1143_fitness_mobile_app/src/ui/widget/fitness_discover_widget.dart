import 'package:flutter/material.dart';

class FitnessDiscoverWidget extends StatelessWidget {
  const FitnessDiscoverWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 0, left: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 64,
            decoration: BoxDecoration(
              color: Colors.pink,
            ),
          ),
          Text(
            "Exercises",
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
