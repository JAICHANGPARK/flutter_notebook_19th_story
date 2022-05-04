import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BacteriaGrowthChartPainter extends CustomPainter {
  const BacteriaGrowthChartPainter({
    required this.historyElements,
    required this.currentTick,
    required this.currentBacteriaAmount,
  });

  final List<BacteriaGrowthHistoryElement> historyElements;
  final int currentTick;
  final int currentBacteriaAmount;

  @override
  void paint(Canvas canvas, Size size) {
    final double dotSize = size.height / 60;
    final Paint paint = Paint();

    for (int i = 0; i < historyElements.length; i++) {
      final BacteriaGrowthHistoryElement element = historyElements[i];
      final double x = element.tickNumber / currentTick * size.width;
      final double y = element.amountOfBacteria / currentBacteriaAmount * size.height;

      if (i == 0) continue;

      final BacteriaGrowthHistoryElement previousElement = historyElements[i - 1];
      final double previousX = previousElement.tickNumber / currentTick * size.width;
      final double previousY = previousElement.amountOfBacteria / currentBacteriaAmount * size.height;

      paint.strokeWidth = dotSize;

      canvas.drawLine(
        Offset(previousX, size.height - previousY),
        Offset(x, size.height - y),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class BacteriaGrowthHistoryElement {
  BacteriaGrowthHistoryElement({
    required this.tickNumber,
    required this.amountOfBacteria,
  });

  final int tickNumber;
  final int amountOfBacteria;
}

class BacteriaHistoryGraph extends StatelessWidget {
  const BacteriaHistoryGraph({
    required this.historyElements,
    required this.currentTick,
    required this.currentBacteriaAmount,
  });

  static const double opacity = 0.5;
  static const double padding = 32;

  final List<BacteriaGrowthHistoryElement> historyElements;
  final int currentTick;
  final int currentBacteriaAmount;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Opacity(
          opacity: opacity,
          child: Container(
            padding: const EdgeInsets.all(
              padding,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 12,
                )
              ],
            ),
            child: _buildMainPart(constraints),
          ),
        );
      },
    );
  }

  Widget _buildMainPart(BoxConstraints constraints) {
    if (historyElements.isEmpty) return Container();

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        HistoryGraphCanvas(
          historyElements: historyElements,
          currentTick: currentTick,
          currentBacteriaAmount: currentBacteriaAmount,
        ),
        _buildInfoText()
      ],
    );
  }

  Positioned _buildInfoText() {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.white70,
        child: Text(
          '${historyElements.last.amountOfBacteria} Bacteria',
        ),
      ),
    );
  }
}

class HistoryGraphCanvas extends StatelessWidget {
  const HistoryGraphCanvas({
    required this.historyElements,
    required this.currentTick,
    required this.currentBacteriaAmount,
  });

  final List<BacteriaGrowthHistoryElement> historyElements;
  final int currentTick;
  final int currentBacteriaAmount;

  @override
  Widget build(BuildContext context) {
    if (historyElements.isEmpty || currentBacteriaAmount == 0) {
      return Container();
    }
    return CustomPaint(
      painter: BacteriaGrowthChartPainter(
        historyElements: historyElements,
        currentTick: currentTick,
        currentBacteriaAmount: currentBacteriaAmount,
      ),
    );
  }
}

class HistoryGraphWidgetTree extends StatelessWidget {
  const HistoryGraphWidgetTree({
    required this.historyElements,
    required this.currentTick,
    required this.currentBacteriaAmount,
    required this.size,
  });

  static const int elementDrawLimit = 2000;
  static const double padding = 32;

  final List<BacteriaGrowthHistoryElement> historyElements;
  final int currentTick;
  final int currentBacteriaAmount;
  final Size size;

  @override
  Widget build(BuildContext context) {
    if (historyElements.isEmpty || currentBacteriaAmount == 0) {
      return Container();
    }

    final double dotSize = size.height / 120;
    final double width = size.width - (padding * 2) - (dotSize * 2);
    final double height = size.height - (padding * 2) - (dotSize * 2);

    final List<BacteriaGrowthHistoryElement> limitedElements = historyElements.sublist(
      max(0, historyElements.length - elementDrawLimit),
    );
    return Stack(
      children: <Widget>[
        for (BacteriaGrowthHistoryElement element in limitedElements)
          _buildGraphPoint(dotSize, element, limitedElements, width, height)
      ],
    );
  }

  Widget _buildGraphPoint(
    double dotSize,
    BacteriaGrowthHistoryElement element,
    List<BacteriaGrowthHistoryElement> elements,
    double width,
    double height,
  ) {
    return Positioned(
      left: dotSize +
          (((element.tickNumber - elements.first.tickNumber) / (currentTick - elements.first.tickNumber)) * width),
      bottom: dotSize + ((element.amountOfBacteria / currentBacteriaAmount) * height),
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
        width: dotSize,
        height: dotSize,
      ),
    );
  }
}
