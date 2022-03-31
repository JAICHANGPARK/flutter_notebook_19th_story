import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1105_fitness_workout_app/src/ui/live_show_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LiveShowCard extends StatelessWidget {
  const LiveShowCard({Key? key, required this.pageController}) : super(key: key);
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2015/07/02/10/23/training-828741_960_720.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          left: 16,
          right: 16,
          bottom: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 84,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    "Premium",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Morning workouts",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                "with fitness specialist",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  Text(
                    "Live Now",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "120 watching",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Unknown Specialist",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Pro trainer",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                      dotHeight: 8,
                      dotWidth: 16,
                      strokeWidth: 8,
                      dotColor: Colors.grey,
                      activeDotColor: Colors.purpleAccent),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 16,
          bottom: 48,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => LiveShowView()));
            },
            child: Container(
              height: 64,
              width: 64,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey[200]!,
                ),
              ),
              padding: const EdgeInsets.all(4),
              child: const CircleAvatar(
                backgroundColor: Colors.deepPurpleAccent,
                foregroundColor: Colors.white,
                child: Icon(Icons.play_arrow),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
