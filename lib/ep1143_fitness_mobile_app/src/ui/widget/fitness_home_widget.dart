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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Overview"),
                  TextButton(
                    onPressed: () {},
                    child: Text("View All"),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.local_fire_department),
                        Text("2,900"),
                        Text("Kcal Burnt")
                      ],
                    ),
                  )),
                  SizedBox(width: 8,),
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.local_fire_department),
                        Text("2,900"),
                        Text("Kcal Burnt")
                      ],
                    ),
                  )),
                  SizedBox(width: 8,),
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.local_fire_department),
                        Text("2,900"),
                        Text("Kcal Burnt")
                      ],
                    ),
                  ))
                ],
              )
            ],
          ),
        )

      ],
    );
  }
}
