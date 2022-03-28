import 'package:url_launcher/url_launcher.dart';

Future sendMail(Uri uri) async {
  var url = uri.toString();

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "Counld not launch $url";
  }
}
