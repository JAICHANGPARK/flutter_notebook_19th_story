import 'package:flutter/material.dart';

class FitnessHomeWidget extends StatefulWidget {
  const FitnessHomeWidget({Key? key}) : super(key: key);

  @override
  State<FitnessHomeWidget> createState() => _FitnessHomeWidgetState();
}

class _FitnessHomeWidgetState extends State<FitnessHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(color: Colors.white),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Overview"),
            TextButton(
              onPressed: () {},
              child: Text("View All"),
            ),
          ],
        )
      ],
    );
  }
}
