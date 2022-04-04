import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1109_smart_home_app/src/utils/theme.dart';

class AirPurifierSettingPage extends StatefulWidget {
  const AirPurifierSettingPage({Key? key}) : super(key: key);

  @override
  State<AirPurifierSettingPage> createState() => _AirPurifierSettingPageState();
}

class _AirPurifierSettingPageState extends State<AirPurifierSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ),
                  Expanded(
                      child: Column(
                    children: const [
                      Text(
                        "Air purifier",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "Bedroom",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.link),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Divider(
              color: kShaSecondary,
              height: 0,
              thickness: 1.5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 36),
              child: Column(
                children: [
                  const Text(
                    "PM2.5ug/m3",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "0",
                        style: TextStyle(
                          color: kShaSecondary,
                          fontSize: 64,
                        ),
                      ),
                      const Text(
                        "14",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 64,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Divider(
              height: 0,
              color: kShaSecondary,
              thickness: 1.5,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: const [
                  Text(
                    "Air status",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.green,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Excellent",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 0,
              color: kShaSecondary,
              thickness: 1.5,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Condition",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Until 45 days left",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Text(
                    "85%",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 0,
              color: kShaSecondary,
              thickness: 1.5,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Coverage",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "for bedroom",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Text(
                    "7-12 m2",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 42,
              child: Expanded(
                child: StatefulBuilder(builder: (context, setState) {
                  return SizedBox(
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                            left: 0,
                            right: 0,
                            child: Container(
                              color: kShaAccents,
                            )),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          top: 0,
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                trackHeight: 16,
                                overlayShape: SliderComponentShape.noThumb,
                                inactiveTrackColor: Colors.white,
                                // thumbShape: RoundSliderThumbShape(
                                //   enabledThumbRadius: 16,
                                //   pressedElevation: 2,
                                // ),
                                thumbShape: SliderThumbShape(),
                                thumbColor: kShaAccents,
                                trackShape: RoundedRectSliderTrackShape(),
                                activeTrackColor: kShaAccents,
                                overlayColor: Colors.black),
                            child: Slider(
                                value: _sliderValue,
                                onChanged: (d) {
                                  setState(() {
                                    _sliderValue = d;
                                  });
                                }),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: Placeholder(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  double _sliderValue = 0.0;
}

class SliderThumbShape extends SliderComponentShape {
  final double? enabledThumbRadius;
  final double? disabledThumbRadius;
  final double? elevation;
  final double? pressedElevation;

  SliderThumbShape({
    this.enabledThumbRadius = 16.0,
    this.disabledThumbRadius,
    this.elevation = 1.0,
    this.pressedElevation = 6.0,
  });

  double get _disabledThumbRadius => disabledThumbRadius ?? enabledThumbRadius ?? 0.0;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    // TODO: implement getPreferredSize
    return Size.fromRadius(isEnabled == true ? enabledThumbRadius ?? 0 : _disabledThumbRadius);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      required bool isDiscrete,
      required TextPainter labelPainter,
      required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required TextDirection textDirection,
      required double value,
      required double textScaleFactor,
      required Size sizeWithOverflow}) {
    final Canvas canvas = context.canvas;
    final Tween<double> radiusTween = Tween(
      begin: _disabledThumbRadius,
      end: enabledThumbRadius,
    );

    final double radius = radiusTween.evaluate(enableAnimation);
    final Tween<double> elevationTween = Tween(
      begin: elevation,
      end: pressedElevation,
    );

    final double evaluatedElevation = elevationTween.evaluate(activationAnimation);

    final Paint paint = Paint()..color = kShaAccents;
    paint.strokeWidth = 15;
    paint.style = PaintingStyle.stroke;
    canvas.drawCircle(center, radius, paint);
    paint.color = Colors.black;
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(center, radius, paint);
  }
}
