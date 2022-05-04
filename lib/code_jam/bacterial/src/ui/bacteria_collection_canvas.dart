import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/code_jam/bacterial/src/model/bacterial.dart';

class BacteriaCollectionCanvas extends StatelessWidget {
  const BacteriaCollectionCanvas({required this.bacteriaList});

  final List<Bacteria> bacteriaList;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BacteriaCollectionPainter(bacteriaList: bacteriaList),
    );
  }
}

class BacteriaCollectionPainter extends CustomPainter {
  const BacteriaCollectionPainter({required this.bacteriaList});

  final List<Bacteria> bacteriaList;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();
    for (final Bacteria bacteria in bacteriaList) {
      final Rect rect = Rect.fromLTWH(
        bacteria.x,
        bacteria.y,
        bacteria.width,
        bacteria.height,
      );
      final RRect roundedRectangle = RRect.fromRectAndRadius(
        rect,
        Radius.circular(bacteria.width / 2),
      );
      paint.strokeWidth = 2;
      paint.color = Colors.black38;

      _drawRotated(
        canvas,
        Offset(
          bacteria.x + (bacteria.width / 2),
          bacteria.y + (bacteria.height / 2),
        ),
        bacteria.rotation,
        () => canvas.drawRRect(roundedRectangle, paint),
      );
    }
  }

  void _drawRotated(
    Canvas canvas,
    Offset center,
    double angle,
    VoidCallback drawFunction,
  ) {
    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.rotate(angle);
    canvas.translate(-center.dx, -center.dy);
    drawFunction();
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class BacteriaCollectionWidgetTree extends StatelessWidget {
  const BacteriaCollectionWidgetTree({required this.bacteriaList});

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
      child: Transform.rotate(
        angle: bacteria.rotation,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.black38,
          ),
          width: bacteria.width,
          height: bacteria.height,
        ),
      ),
    );
  }
}
