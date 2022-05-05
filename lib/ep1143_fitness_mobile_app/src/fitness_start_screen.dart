import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FitnessStartScreen extends StatelessWidget {
  const FitnessStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            right: 0,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.blue.withOpacity(0.2), BlendMode.color),
              child: CachedNetworkImage(
                imageUrl: 'https://cdn.pixabay.com/photo/2016/11/19/16/48/woman-1840275_960_720.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 24,
            bottom: 32,
            right: 72,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.5),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Transform",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
                Text("your life",  style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 32,
                  color: Colors.white,
                ),),
                Text("for better",  style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 32,
                  color: Colors.white,
                ),),
                Text("Don't waste time and start your new life today with a personalized training plan"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
