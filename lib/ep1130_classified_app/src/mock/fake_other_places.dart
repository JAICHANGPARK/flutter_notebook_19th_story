import 'package:flutter_notebook_19th_story/ep1130_classified_app/src/model/nearby_hotel.dart';
import 'package:flutter_notebook_19th_story/ep1130_classified_app/src/model/other_places.dart';

List<NearbyHotel> fakeNearByHotelItems = [
  NearbyHotel(
      img: "https://cdn.pixabay.com/photo/2017/05/31/10/23/manor-house-2359884_960_720.jpg",
      title: "The Jefferson Hotel",
      price: "75",
      review: "3.8",
      imgItems: [
        "https://cdn.pixabay.com/photo/2017/05/31/10/23/manor-house-2359884_960_720.jpg",
        "https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_960_720.jpg",
        "https://cdn.pixabay.com/photo/2014/07/21/19/20/lobby-398845__340.jpg",
        "https://cdn.pixabay.com/photo/2021/08/27/01/33/bedroom-6577523__340.jpg"
      ]),
];

List<OtherPlace> fakeOtherPlaceItems = [
  OtherPlace(
    img: "https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_960_720.jpg",
    title: "The Grand Hotel",
    price: "75",
    isLike: false,
    review: "3.8",
  ),
  OtherPlace(
    img: "https://cdn.pixabay.com/photo/2014/07/21/19/20/lobby-398845__340.jpg",
    title: "Blue Ocean Hotel",
    price: "86",
    isLike: true,
    review: "4.2",
  ),
  OtherPlace(
    img: "https://cdn.pixabay.com/photo/2014/07/10/17/17/hotel-389256__340.jpg",
    title: "The Grand Hotel",
    price: "75",
    isLike: false,
    review: "3.8",
  ),
  OtherPlace(
    img: "https://cdn.pixabay.com/photo/2014/07/10/17/17/hotel-389256__340.jpg",
    title: "The Grand Hotel",
    price: "75",
    isLike: false,
    review: "3.8",
  ),
  OtherPlace(
    img: "https://cdn.pixabay.com/photo/2014/07/10/17/17/hotel-389256__340.jpg",
    title: "The Grand Hotel",
    price: "75",
    isLike: false,
    review: "3.8",
  )
];
