import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/code_jam/bacterial/src/model/bacterial.dart';

class PetriDishIterative extends StatefulWidget {
  const PetriDishIterative({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PetriDishIterativeState();
  }
}

class _PetriDishIterativeState<PetriDish> extends State {
  static const int tickTime = 30;
  static const double recreationProbability = 0.005;
  static const double deathProbability = 0.001;
  static const double maxBacteriaAmount = 1024;

  List<Bacteria> bacteriaList = <Bacteria>[];

  @override
  Widget build(BuildContext context) {
    return BacteriaCollection(bacteriaList: bacteriaList);
  }
}

class BacteriaCollection extends StatelessWidget {
  const BacteriaCollection({required this.bacteriaList});

  final List<Bacteria> bacteriaList;

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetList = bacteriaList
        .map(
          (Bacteria bacteria) => _buildWidgetFromBacteria(bacteria),
        )
        .toList();

    return Stack(children: widgetList);
  }

  Positioned _buildWidgetFromBacteria(Bacteria bacteria) {
    return Positioned(
      left: bacteria.x,
      top: bacteria.y,
      child: Container(
        width: 10,
        height: 10,
        color: Colors.black,
      ),
    );
  }
}
