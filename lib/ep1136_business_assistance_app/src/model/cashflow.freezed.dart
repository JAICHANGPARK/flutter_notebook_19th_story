// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cashflow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cashflow _$CashflowFromJson(Map<String, dynamic> json) {
  return _Cashflow.fromJson(json);
}

/// @nodoc
class _$CashflowTearOff {
  const _$CashflowTearOff();

  _Cashflow call({String? title, String? price}) {
    return _Cashflow(
      title: title,
      price: price,
    );
  }

  Cashflow fromJson(Map<String, Object?> json) {
    return Cashflow.fromJson(json);
  }
}

/// @nodoc
const $Cashflow = _$CashflowTearOff();

/// @nodoc
mixin _$Cashflow {
  String? get title => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CashflowCopyWith<Cashflow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashflowCopyWith<$Res> {
  factory $CashflowCopyWith(Cashflow value, $Res Function(Cashflow) then) =
      _$CashflowCopyWithImpl<$Res>;
  $Res call({String? title, String? price});
}

/// @nodoc
class _$CashflowCopyWithImpl<$Res> implements $CashflowCopyWith<$Res> {
  _$CashflowCopyWithImpl(this._value, this._then);

  final Cashflow _value;
  // ignore: unused_field
  final $Res Function(Cashflow) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CashflowCopyWith<$Res> implements $CashflowCopyWith<$Res> {
  factory _$CashflowCopyWith(_Cashflow value, $Res Function(_Cashflow) then) =
      __$CashflowCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? price});
}

/// @nodoc
class __$CashflowCopyWithImpl<$Res> extends _$CashflowCopyWithImpl<$Res>
    implements _$CashflowCopyWith<$Res> {
  __$CashflowCopyWithImpl(_Cashflow _value, $Res Function(_Cashflow) _then)
      : super(_value, (v) => _then(v as _Cashflow));

  @override
  _Cashflow get _value => super._value as _Cashflow;

  @override
  $Res call({
    Object? title = freezed,
    Object? price = freezed,
  }) {
    return _then(_Cashflow(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cashflow implements _Cashflow {
  _$_Cashflow({this.title, this.price});

  factory _$_Cashflow.fromJson(Map<String, dynamic> json) =>
      _$$_CashflowFromJson(json);

  @override
  final String? title;
  @override
  final String? price;

  @override
  String toString() {
    return 'Cashflow(title: $title, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Cashflow &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$CashflowCopyWith<_Cashflow> get copyWith =>
      __$CashflowCopyWithImpl<_Cashflow>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CashflowToJson(this);
  }
}

abstract class _Cashflow implements Cashflow {
  factory _Cashflow({String? title, String? price}) = _$_Cashflow;

  factory _Cashflow.fromJson(Map<String, dynamic> json) = _$_Cashflow.fromJson;

  @override
  String? get title;
  @override
  String? get price;
  @override
  @JsonKey(ignore: true)
  _$CashflowCopyWith<_Cashflow> get copyWith =>
      throw _privateConstructorUsedError;
}

CashFlowItems _$CashFlowItemsFromJson(Map<String, dynamic> json) {
  return _CashFlowItems.fromJson(json);
}

/// @nodoc
class _$CashFlowItemsTearOff {
  const _$CashFlowItemsTearOff();

  _CashFlowItems call({List<Cashflow>? items = const []}) {
    return _CashFlowItems(
      items: items,
    );
  }

  CashFlowItems fromJson(Map<String, Object?> json) {
    return CashFlowItems.fromJson(json);
  }
}

/// @nodoc
const $CashFlowItems = _$CashFlowItemsTearOff();

/// @nodoc
mixin _$CashFlowItems {
  List<Cashflow>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CashFlowItemsCopyWith<CashFlowItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashFlowItemsCopyWith<$Res> {
  factory $CashFlowItemsCopyWith(
          CashFlowItems value, $Res Function(CashFlowItems) then) =
      _$CashFlowItemsCopyWithImpl<$Res>;
  $Res call({List<Cashflow>? items});
}

/// @nodoc
class _$CashFlowItemsCopyWithImpl<$Res>
    implements $CashFlowItemsCopyWith<$Res> {
  _$CashFlowItemsCopyWithImpl(this._value, this._then);

  final CashFlowItems _value;
  // ignore: unused_field
  final $Res Function(CashFlowItems) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Cashflow>?,
    ));
  }
}

/// @nodoc
abstract class _$CashFlowItemsCopyWith<$Res>
    implements $CashFlowItemsCopyWith<$Res> {
  factory _$CashFlowItemsCopyWith(
          _CashFlowItems value, $Res Function(_CashFlowItems) then) =
      __$CashFlowItemsCopyWithImpl<$Res>;
  @override
  $Res call({List<Cashflow>? items});
}

/// @nodoc
class __$CashFlowItemsCopyWithImpl<$Res>
    extends _$CashFlowItemsCopyWithImpl<$Res>
    implements _$CashFlowItemsCopyWith<$Res> {
  __$CashFlowItemsCopyWithImpl(
      _CashFlowItems _value, $Res Function(_CashFlowItems) _then)
      : super(_value, (v) => _then(v as _CashFlowItems));

  @override
  _CashFlowItems get _value => super._value as _CashFlowItems;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_CashFlowItems(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Cashflow>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CashFlowItems implements _CashFlowItems {
  _$_CashFlowItems({this.items = const []});

  factory _$_CashFlowItems.fromJson(Map<String, dynamic> json) =>
      _$$_CashFlowItemsFromJson(json);

  @JsonKey()
  @override
  final List<Cashflow>? items;

  @override
  String toString() {
    return 'CashFlowItems(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CashFlowItems &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$CashFlowItemsCopyWith<_CashFlowItems> get copyWith =>
      __$CashFlowItemsCopyWithImpl<_CashFlowItems>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CashFlowItemsToJson(this);
  }
}

abstract class _CashFlowItems implements CashFlowItems {
  factory _CashFlowItems({List<Cashflow>? items}) = _$_CashFlowItems;

  factory _CashFlowItems.fromJson(Map<String, dynamic> json) =
      _$_CashFlowItems.fromJson;

  @override
  List<Cashflow>? get items;
  @override
  @JsonKey(ignore: true)
  _$CashFlowItemsCopyWith<_CashFlowItems> get copyWith =>
      throw _privateConstructorUsedError;
}
