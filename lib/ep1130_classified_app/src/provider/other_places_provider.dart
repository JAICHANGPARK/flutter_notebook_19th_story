import 'package:flutter_notebook_19th_story/ep1130_classified_app/src/mock/fake_other_places.dart';
import 'package:flutter_notebook_19th_story/ep1130_classified_app/src/model/other_places.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final otherPlacesProvider =
    StateNotifierProvider<OtherPlacesController, List<OtherPlace>>((ref) => OtherPlacesController(fakeOtherPlaceItems));

class OtherPlacesController extends StateNotifier<List<OtherPlace>> {
  OtherPlacesController(super.state);

  void updateLike(int index) {

    var like = !(state[index].isLike ?? false);
    print("updateLike: $index ${like}");
    state[index] = state[index].copyWith(isLike: like);
    state = [...state];
  }
}
