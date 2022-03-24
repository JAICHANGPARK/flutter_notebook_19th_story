import 'package:freezed_annotation/freezed_annotation.dart';

part 'mail_inbox.freezed.dart';

@freezed
class MailInbox with _$MailInbox {
  factory MailInbox({
    String? title,
    String? subtitle,
    String? overlayText,
    bool? isNew,
    bool? isFavorite,
    String? time,
  }) = _MailInbox;
}
