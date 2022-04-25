import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1130_classified_app/src/model/nearby_hotel.dart';
import 'package:flutter_notebook_19th_story/ep1130_classified_app/src/model/other_places.dart';

class HotelDetailPage extends StatefulWidget {
  final NearbyHotel nearbyHotel;

  const HotelDetailPage({Key? key, required this.nearbyHotel}) : super(key: key);

  @override
  State<HotelDetailPage> createState() => _HotelDetailPageState();
}

class _HotelDetailPageState extends State<HotelDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Placeholder()),
          Expanded(child: Placeholder()),
          Divider(
            height: 0,
            color: Colors.grey,
          ),
          Container(
            height: 52,
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Total Amount:",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "\$${widget.nearbyHotel.price}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text(
                      "Book Now",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
