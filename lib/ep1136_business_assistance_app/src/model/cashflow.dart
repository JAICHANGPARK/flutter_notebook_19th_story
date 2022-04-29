import 'package:freezed_annotation/freezed_annotation.dart';

part 'cashflow.freezed.dart';


@freezed
class Cashflow with _$Cashflow {
  factory Cashflow({
    String? title,
    String? price,
  }) = _Cashflow;
}
