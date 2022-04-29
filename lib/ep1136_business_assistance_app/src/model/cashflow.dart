import 'package:freezed_annotation/freezed_annotation.dart';

part 'cashflow.freezed.dart';

part 'cashflow.g.dart';

@freezed
class Cashflow with _$Cashflow {
  factory Cashflow({
    String? title,
    String? price,
  }) = _Cashflow;

  factory Cashflow.fromJson(Map<String, dynamic> json) => _$CashflowFromJson(json);
}

@freezed
class CashFlowItems with _$CashFlowItems {
  factory CashFlowItems({
    @Default([]) List<Cashflow>? items,
  }) = _CashFlowItems;

  factory CashFlowItems.fromJson(Map<String, dynamic> json) => _$CashFlowItemsFromJson(json);
}
