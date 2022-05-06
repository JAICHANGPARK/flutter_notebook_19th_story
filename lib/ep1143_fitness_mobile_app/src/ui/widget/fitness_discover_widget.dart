import 'package:flutter/material.dart';

class FitnessDiscoverWidget extends StatelessWidget {
  const FitnessDiscoverWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 160,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        Container(
          height: 64,
          decoration: BoxDecoration(
            color: Colors.pink,
          ),
        )
      ],
    );
  }
}
