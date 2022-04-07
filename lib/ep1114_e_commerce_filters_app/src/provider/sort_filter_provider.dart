

import 'package:flutter_notebook_19th_story/ep1114_e_commerce_filters_app/src/enums/enum_sort_by.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sortFilterProvider = StateProvider<EnumSortBy>((ref)=> EnumSortBy.recommended);