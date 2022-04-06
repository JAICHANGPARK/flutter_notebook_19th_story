import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_results.freezed.dart';

@freezed
class ShopResult with _$ShopResult {
  factory ShopResult({
    bool? isSoldOut,
    String? img,
    String? vendor,
    String? name,
    String? price,
  }) = _ShopResult;
}


