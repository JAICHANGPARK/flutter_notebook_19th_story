import 'package:cached_network_image/cached_network_image.dart';
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
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        bottom: 0,
                        top: 0,
                        right: 0,
                        child: PageView(
                          children: widget.nearbyHotel.imgItems
                              .map((e) => Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        image:
                                            DecorationImage(image: CachedNetworkImageProvider(e), fit: BoxFit.cover)),
                                  ))
                              .toList(),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 16,
                        right: 16,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              child: IconButton(
                                icon: const Icon(
                                  Icons.arrow_back_ios,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            CircleAvatar(
                              child: IconButton(
                                icon: const Icon(
                                  Icons.favorite,
                                ),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(widget.nearbyHotel.title ?? ""),
                      Icon(Icons.star, color: Colors.yellow,),
                      Text(widget.nearbyHotel.review ?? ""),

                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.blue,
                      ),
                      Text("${widget.nearbyHotel.location}"),
                    ],
                  ),
                  Container(
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                  Text("Description", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),)
                ],
              ),
            ),
            const Divider(
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
                        const Text(
                          "Total Amount:",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "\$${widget.nearbyHotel.price}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: const Center(
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
      ),
    );
  }
}
