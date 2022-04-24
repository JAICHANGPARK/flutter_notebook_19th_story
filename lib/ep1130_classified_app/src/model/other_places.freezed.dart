// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'other_places.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OtherPlaceTearOff {
  const _$OtherPlaceTearOff();

  _OtherPlace call(
      {String? img,
      String? title,
      String? price,
      String? review,
      bool? isLike = false}) {
    return _OtherPlace(
      img: img,
      title: title,
      price: price,
      review: review,
      isLike: isLike,
    );
  }
}

/// @nodoc
const $OtherPlace = _$OtherPlaceTearOff();

/// @nodoc
mixin _$OtherPlace {
  String? get img => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get review => throw _privateConstructorUsedError;
  bool? get isLike => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtherPlaceCopyWith<OtherPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherPlaceCopyWith<$Res> {
  factory $OtherPlaceCopyWith(
          OtherPlace value, $Res Function(OtherPlace) then) =
      _$OtherPlaceCopyWithImpl<$Res>;
  $Res call(
      {String? img,
      String? title,
      String? price,
      String? review,
      bool? isLike});
}

/// @nodoc
class _$OtherPlaceCopyWithImpl<$Res> implements $OtherPlaceCopyWith<$Res> {
  _$OtherPlaceCopyWithImpl(this._value, this._then);

  final OtherPlace _value;
  // ignore: unused_field
  final $Res Function(OtherPlace) _then;

  @override
  $Res call({
    Object? img = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? review = freezed,
    Object? isLike = freezed,
  }) {
    return _then(_value.copyWith(
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      isLike: isLike == freezed
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$OtherPlaceCopyWith<$Res> implements $OtherPlaceCopyWith<$Res> {
  factory _$OtherPlaceCopyWith(
          _OtherPlace value, $Res Function(_OtherPlace) then) =
      __$OtherPlaceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? img,
      String? title,
      String? price,
      String? review,
      bool? isLike});
}

/// @nodoc
class __$OtherPlaceCopyWithImpl<$Res> extends _$OtherPlaceCopyWithImpl<$Res>
    implements _$OtherPlaceCopyWith<$Res> {
  __$OtherPlaceCopyWithImpl(
      _OtherPlace _value, $Res Function(_OtherPlace) _then)
      : super(_value, (v) => _then(v as _OtherPlace));

  @override
  _OtherPlace get _value => super._value as _OtherPlace;

  @override
  $Res call({
    Object? img = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? review = freezed,
    Object? isLike = freezed,
  }) {
    return _then(_OtherPlace(
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      isLike: isLike == freezed
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_OtherPlace implements _OtherPlace {
  _$_OtherPlace(
      {this.img, this.title, this.price, this.review, this.isLike = false});

  @override
  final String? img;
  @override
  final String? title;
  @override
  final String? price;
  @override
  final String? review;
  @JsonKey()
  @override
  final bool? isLike;

  @override
  String toString() {
    return 'OtherPlace(img: $img, title: $title, price: $price, review: $review, isLike: $isLike)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OtherPlace &&
            const DeepCollectionEquality().equals(other.img, img) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.review, review) &&
            const DeepCollectionEquality().equals(other.isLike, isLike));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(img),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(review),
      const DeepCollectionEquality().hash(isLike));

  @JsonKey(ignore: true)
  @override
  _$OtherPlaceCopyWith<_OtherPlace> get copyWith =>
      __$OtherPlaceCopyWithImpl<_OtherPlace>(this, _$identity);
}

abstract class _OtherPlace implements OtherPlace {
  factory _OtherPlace(
      {String? img,
      String? title,
      String? price,
      String? review,
      bool? isLike}) = _$_OtherPlace;

  @override
  String? get img;
  @override
  String? get title;
  @override
  String? get price;
  @override
  String? get review;
  @override
  bool? get isLike;
  @override
  @JsonKey(ignore: true)
  _$OtherPlaceCopyWith<_OtherPlace> get copyWith =>
      throw _privateConstructorUsedError;
}
