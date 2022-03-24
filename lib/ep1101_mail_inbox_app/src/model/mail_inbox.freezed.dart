// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mail_inbox.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MailInboxTearOff {
  const _$MailInboxTearOff();

  _MailInbox call(
      {String? title,
      String? subtitle,
      String? overlayText,
      bool? isNew,
      bool? isFavorite,
      String? time}) {
    return _MailInbox(
      title: title,
      subtitle: subtitle,
      overlayText: overlayText,
      isNew: isNew,
      isFavorite: isFavorite,
      time: time,
    );
  }
}

/// @nodoc
const $MailInbox = _$MailInboxTearOff();

/// @nodoc
mixin _$MailInbox {
  String? get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String? get overlayText => throw _privateConstructorUsedError;
  bool? get isNew => throw _privateConstructorUsedError;
  bool? get isFavorite => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MailInboxCopyWith<MailInbox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MailInboxCopyWith<$Res> {
  factory $MailInboxCopyWith(MailInbox value, $Res Function(MailInbox) then) =
      _$MailInboxCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? subtitle,
      String? overlayText,
      bool? isNew,
      bool? isFavorite,
      String? time});
}

/// @nodoc
class _$MailInboxCopyWithImpl<$Res> implements $MailInboxCopyWith<$Res> {
  _$MailInboxCopyWithImpl(this._value, this._then);

  final MailInbox _value;
  // ignore: unused_field
  final $Res Function(MailInbox) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? overlayText = freezed,
    Object? isNew = freezed,
    Object? isFavorite = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overlayText: overlayText == freezed
          ? _value.overlayText
          : overlayText // ignore: cast_nullable_to_non_nullable
              as String?,
      isNew: isNew == freezed
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MailInboxCopyWith<$Res> implements $MailInboxCopyWith<$Res> {
  factory _$MailInboxCopyWith(
          _MailInbox value, $Res Function(_MailInbox) then) =
      __$MailInboxCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? subtitle,
      String? overlayText,
      bool? isNew,
      bool? isFavorite,
      String? time});
}

/// @nodoc
class __$MailInboxCopyWithImpl<$Res> extends _$MailInboxCopyWithImpl<$Res>
    implements _$MailInboxCopyWith<$Res> {
  __$MailInboxCopyWithImpl(_MailInbox _value, $Res Function(_MailInbox) _then)
      : super(_value, (v) => _then(v as _MailInbox));

  @override
  _MailInbox get _value => super._value as _MailInbox;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? overlayText = freezed,
    Object? isNew = freezed,
    Object? isFavorite = freezed,
    Object? time = freezed,
  }) {
    return _then(_MailInbox(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overlayText: overlayText == freezed
          ? _value.overlayText
          : overlayText // ignore: cast_nullable_to_non_nullable
              as String?,
      isNew: isNew == freezed
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MailInbox implements _MailInbox {
  _$_MailInbox(
      {this.title,
      this.subtitle,
      this.overlayText,
      this.isNew,
      this.isFavorite,
      this.time});

  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final String? overlayText;
  @override
  final bool? isNew;
  @override
  final bool? isFavorite;
  @override
  final String? time;

  @override
  String toString() {
    return 'MailInbox(title: $title, subtitle: $subtitle, overlayText: $overlayText, isNew: $isNew, isFavorite: $isFavorite, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MailInbox &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality()
                .equals(other.overlayText, overlayText) &&
            const DeepCollectionEquality().equals(other.isNew, isNew) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(overlayText),
      const DeepCollectionEquality().hash(isNew),
      const DeepCollectionEquality().hash(isFavorite),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$MailInboxCopyWith<_MailInbox> get copyWith =>
      __$MailInboxCopyWithImpl<_MailInbox>(this, _$identity);
}

abstract class _MailInbox implements MailInbox {
  factory _MailInbox(
      {String? title,
      String? subtitle,
      String? overlayText,
      bool? isNew,
      bool? isFavorite,
      String? time}) = _$_MailInbox;

  @override
  String? get title;
  @override
  String? get subtitle;
  @override
  String? get overlayText;
  @override
  bool? get isNew;
  @override
  bool? get isFavorite;
  @override
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$MailInboxCopyWith<_MailInbox> get copyWith =>
      throw _privateConstructorUsedError;
}
