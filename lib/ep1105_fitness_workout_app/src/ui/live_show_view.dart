import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LiveShowView extends StatefulWidget {
  const LiveShowView({Key? key}) : super(key: key);

  @override
  State<LiveShowView> createState() => _LiveShowViewState();
}

class _LiveShowViewState extends State<LiveShowView> {
  VideoPlayerController? videoPlayerController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    videoPlayerController = VideoPlayerController.network(
      "player.vimeo.com/external/490319213.sd.mp4?s=15f30601fdd823acd5726a1e9c8c7959a4eb3820&profile_id=164",
    )..initialize().then((value) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    videoPlayerController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 0,
              child: VideoPlayer(videoPlayerController!),
            ),
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 16,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.chevron_left),
                          color: Colors.white,
                        ),
                        const Expanded(
                            child: Center(
                          child: Text(
                            "Specialist",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.share),
                          color: Colors.white,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                            child: Row(
                              children: const [
                                Icon(Icons.videocam, color: Colors.white, size: 16),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Live",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                            child: Row(
                              children: const [
                                Icon(Icons.visibility, color: Colors.white, size: 16),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "120",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.videocam,
                            color: Colors.white,
                          ),
                          Text(
                            "10:04",
                            style: TextStyle(color: Colors.white),
                          ),
                          Spacer(),
                          Icon(
                            Icons.chat_bubble_outline,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "240",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "1.5k",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
