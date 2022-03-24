import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/mail_inbox.dart';

final inboxLoader = FutureProvider<List<MailInbox>>((ref) {
  return [];
});
