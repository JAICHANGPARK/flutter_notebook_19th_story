import 'package:flutter/material.dart';

class OfficeMainPage extends StatefulWidget {
  const OfficeMainPage({Key? key}) : super(key: key);

  @override
  State<OfficeMainPage> createState() => _OfficeMainPageState();
}

class _OfficeMainPageState extends State<OfficeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Row(
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueAccent,
                      ),
                      child: const Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                      ),
                    ),
                    const Expanded(
                      child: Center(
                        child: Text(
                          "Meeting Schedule",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 36,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hello Dreamwalker", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),


                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 16,
                        ),
                        SizedBox(width: 4,),
                        Text(
                          "Create Meeting",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
