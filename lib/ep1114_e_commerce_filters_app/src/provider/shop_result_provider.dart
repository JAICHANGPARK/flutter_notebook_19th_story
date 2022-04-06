

import 'package:flutter_notebook_19th_story/ep1114_e_commerce_filters_app/src/model/shop_results.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final shopResultProvider = StateNotifierProvider((ref) =>ShopResultController([]) );


class ShopResultController extends StateNotifier<List<ShopResult>>{
  ShopResultController(super.state);

}