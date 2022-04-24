import 'package:freezed_annotation/freezed_annotation.dart';

part 'other_places.freezed.dart';

@freezed
class OtherPlace with _$OtherPlace {
  factory OtherPlace({
    String? img,
    String? title,
    String? price,
    String? review,
    @Default(false) bool? isLike,
  }) = _OtherPlace;
}
