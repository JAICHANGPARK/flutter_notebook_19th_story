import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1130_classified_app/src/hotel_detail_page.dart';
import 'package:flutter_notebook_19th_story/ep1130_classified_app/src/mock/fake_other_places.dart';
import 'package:flutter_notebook_19th_story/ep1130_classified_app/src/model/other_places.dart';
import 'package:flutter_notebook_19th_story/ep1130_classified_app/src/provider/other_places_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClassHotelPage extends StatefulWidget {
  const ClassHotelPage({Key? key}) : super(key: key);

  @override
  State<ClassHotelPage> createState() => _ClassHotelPageState();
}

class _ClassHotelPageState extends State<ClassHotelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Stack(
          children: [
            const Positioned(
                left: 0,
                right: 0,
                top: 24,
                child: Center(
                  child: Text(
                    "Hotels",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 38,
                        width: 4,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(3),
                            bottomRight: Radius.circular(3),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      const Text(
                        "Nearby Hotels",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text("See All"),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: fakeNearByHotelItems.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: 280,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => HotelDetailPage(
                                    nearbyHotel: fakeNearByHotelItems[index],
                                  ),
                                ));
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(16),
                                            image: DecorationImage(
                                              image: CachedNetworkImageProvider(
                                                fakeNearByHotelItems[index].img ?? "",
                                                // "https://cdn.pixabay.com/photo/2017/05/31/10/23/manor-house-2359884_960_720.jpg",
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                // "The Jefferson Hotel",
                                                fakeNearByHotelItems[index].title ?? "",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Spacer(),
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Colors.yellowAccent,
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Text(
                                                // "4.0",
                                                fakeNearByHotelItems[index].review ?? "",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "\$${fakeNearByHotelItems[index].price ?? ""}",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                              Spacer(),
                                              Icon(
                                                Icons.location_on,
                                                size: 14,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Text(
                                                "Map",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 38,
                        width: 4,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(3),
                            bottomRight: Radius.circular(3),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      const Text(
                        "Other Places",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text("See All"),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Consumer(builder: (context, ref, _) {
                        final items = ref.watch(otherPlacesProvider);
                        return GridView.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            childAspectRatio: 8 / 10,
                          ),
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            OtherPlace item = items[index];
                            return Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: CachedNetworkImageProvider(item.img ?? ""),
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              right: 0,
                                              top: 0,
                                              child: IconButton(
                                                icon: Icon(Icons.favorite),
                                                iconSize: 16,
                                                onPressed: () {
                                                  ref.read(otherPlacesProvider.notifier).updateLike(index);
                                                },
                                                color: (item.isLike ?? false) ? Colors.red : Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item.title ?? "",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "\$${item.price}",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: Colors.blue,
                                              ),
                                            ),
                                            Spacer(),
                                            Icon(
                                              Icons.location_on,
                                              size: 14,
                                              color: Colors.blue,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              "Map",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                            Spacer(),
                                            Icon(
                                              Icons.star,
                                              size: 14,
                                              color: Colors.yellowAccent,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              "${item.review}",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
