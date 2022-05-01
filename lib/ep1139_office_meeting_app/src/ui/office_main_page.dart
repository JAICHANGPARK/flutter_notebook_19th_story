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
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
