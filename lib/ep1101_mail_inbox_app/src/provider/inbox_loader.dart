import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/mail_inbox.dart';

final inboxLoader = FutureProvider<List<MailInbox>>((ref) async {
  await Future.delayed(const Duration(seconds: 5));
  return [
    MailInbox(
      title: "Cocolita Shop",
      subtitle: "Your order number 123456789 has benn shipped",
      isFavorite: false,
      isNew: true,
      overlayText:
          "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      time: "8:08PM"
    ),
    MailInbox(
        title: "Mailchimp",
        subtitle: "Weekly summary from Mailchimp",
        isFavorite: false,
        isNew: true,
        overlayText:
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        time: "8:02PM"
    ),
    MailInbox(
        title: "Linkedin",
        subtitle: "Weekly summary from Mailchimp",
        isFavorite: true,
        isNew: false,
        overlayText:
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        time: "6:09PM"
    ),
    MailInbox(
        title: "Linkedin",
        subtitle: "Weekly summary from Mailchimp",
        isFavorite: true,
        isNew: false,
        overlayText:
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        time: "6:09PM"
    ),
    MailInbox(
        title: "Linkedin",
        subtitle: "Weekly summary from Mailchimp",
        isFavorite: true,
        isNew: false,
        overlayText:
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        time: "6:09PM"
    ),
    MailInbox(
        title: "Linkedin",
        subtitle: "Weekly summary from Mailchimp",
        isFavorite: true,
        isNew: false,
        overlayText:
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        time: "6:09PM"
    ),
  ];
});
