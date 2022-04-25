import 'package:freezed_annotation/freezed_annotation.dart';

part 'nearby_hotel.freezed.dart';

@freezed
class NearbyHotel with _$NearbyHotel {
  factory NearbyHotel({
    String? img,
    String? title,
    String? price,
    String? review,
    @Default([]) List<String> imgItems,
    String? description,
    String? location,
    Map<String, String>? roomInfo,
  }) = _NearbyHotel;
}
