// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShopResultTearOff {
  const _$ShopResultTearOff();

  _ShopResult call(
      {bool? isSoldOut,
      String? img,
      String? vendor,
      String? name,
      String? price}) {
    return _ShopResult(
      isSoldOut: isSoldOut,
      img: img,
      vendor: vendor,
      name: name,
      price: price,
    );
  }
}

/// @nodoc
const $ShopResult = _$ShopResultTearOff();

/// @nodoc
mixin _$ShopResult {
  bool? get isSoldOut => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;
  String? get vendor => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopResultCopyWith<ShopResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopResultCopyWith<$Res> {
  factory $ShopResultCopyWith(
          ShopResult value, $Res Function(ShopResult) then) =
      _$ShopResultCopyWithImpl<$Res>;
  $Res call(
      {bool? isSoldOut,
      String? img,
      String? vendor,
      String? name,
      String? price});
}

/// @nodoc
class _$ShopResultCopyWithImpl<$Res> implements $ShopResultCopyWith<$Res> {
  _$ShopResultCopyWithImpl(this._value, this._then);

  final ShopResult _value;
  // ignore: unused_field
  final $Res Function(ShopResult) _then;

  @override
  $Res call({
    Object? isSoldOut = freezed,
    Object? img = freezed,
    Object? vendor = freezed,
    Object? name = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      isSoldOut: isSoldOut == freezed
          ? _value.isSoldOut
          : isSoldOut // ignore: cast_nullable_to_non_nullable
              as bool?,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ShopResultCopyWith<$Res> implements $ShopResultCopyWith<$Res> {
  factory _$ShopResultCopyWith(
          _ShopResult value, $Res Function(_ShopResult) then) =
      __$ShopResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isSoldOut,
      String? img,
      String? vendor,
      String? name,
      String? price});
}

/// @nodoc
class __$ShopResultCopyWithImpl<$Res> extends _$ShopResultCopyWithImpl<$Res>
    implements _$ShopResultCopyWith<$Res> {
  __$ShopResultCopyWithImpl(
      _ShopResult _value, $Res Function(_ShopResult) _then)
      : super(_value, (v) => _then(v as _ShopResult));

  @override
  _ShopResult get _value => super._value as _ShopResult;

  @override
  $Res call({
    Object? isSoldOut = freezed,
    Object? img = freezed,
    Object? vendor = freezed,
    Object? name = freezed,
    Object? price = freezed,
  }) {
    return _then(_ShopResult(
      isSoldOut: isSoldOut == freezed
          ? _value.isSoldOut
          : isSoldOut // ignore: cast_nullable_to_non_nullable
              as bool?,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ShopResult implements _ShopResult {
  _$_ShopResult({this.isSoldOut, this.img, this.vendor, this.name, this.price});

  @override
  final bool? isSoldOut;
  @override
  final String? img;
  @override
  final String? vendor;
  @override
  final String? name;
  @override
  final String? price;

  @override
  String toString() {
    return 'ShopResult(isSoldOut: $isSoldOut, img: $img, vendor: $vendor, name: $name, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShopResult &&
            const DeepCollectionEquality().equals(other.isSoldOut, isSoldOut) &&
            const DeepCollectionEquality().equals(other.img, img) &&
            const DeepCollectionEquality().equals(other.vendor, vendor) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isSoldOut),
      const DeepCollectionEquality().hash(img),
      const DeepCollectionEquality().hash(vendor),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$ShopResultCopyWith<_ShopResult> get copyWith =>
      __$ShopResultCopyWithImpl<_ShopResult>(this, _$identity);
}

abstract class _ShopResult implements ShopResult {
  factory _ShopResult(
      {bool? isSoldOut,
      String? img,
      String? vendor,
      String? name,
      String? price}) = _$_ShopResult;

  @override
  bool? get isSoldOut;
  @override
  String? get img;
  @override
  String? get vendor;
  @override
  String? get name;
  @override
  String? get price;
  @override
  @JsonKey(ignore: true)
  _$ShopResultCopyWith<_ShopResult> get copyWith =>
      throw _privateConstructorUsedError;
}
