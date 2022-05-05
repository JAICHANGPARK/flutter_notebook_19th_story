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
              colorFilter: ColorFilter.mode(Colors.blue.withOpacity(0.6), BlendMode.color),
              child: CachedNetworkImage(
                imageUrl: 'https://cdn.pixabay.com/photo/2016/11/19/16/48/woman-1840275_960_720.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 24,
            bottom: 32,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
