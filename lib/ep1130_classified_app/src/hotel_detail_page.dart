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
          Container(
            height: 64,
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Total Amount:"), Text("\$${widget.nearbyHotel.price}")],
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
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
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
