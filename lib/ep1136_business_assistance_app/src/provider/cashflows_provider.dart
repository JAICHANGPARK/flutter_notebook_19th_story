import 'dart:convert';

import 'package:flutter_notebook_19th_story/ep1136_business_assistance_app/src/model/cashflow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

String cashflows = """
{
"items" : [
  {
  "title": "total",
  "price" : "2,343,538"
  },
    {
  "title": "main",
  "price" : "1,432,674"
  },
  {
  "title": "for taxing",
  "price" : "343,538"
  },
  {
  "title": "investments",
  "price" : "343,538"
  },
  {
  "title": "rent",
  "price" : "343,538"
  },
  {
  "title": "private",
  "price" : "343,538"
  },
  {
  "title": "employee salaries",
  "price" : "465,456"
  },
   {
  "title": "online shopping",
  "price" : "343,538"
  },
   {
  "title": "reserved",
  "price" : "343,538"
  }
]
}

""";

final cashFlowProvider = FutureProvider<CashFlowItems>((ref) async {
  await Future.delayed(const Duration(seconds: 3));
  return CashFlowItems.fromJson(jsonDecode(cashflows));
});
