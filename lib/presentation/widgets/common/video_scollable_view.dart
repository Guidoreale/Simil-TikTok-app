import 'package:flutter/material.dart';
import 'package:simil_tiktok/domain/entities/video_post.dart';
import 'package:simil_tiktok/presentation/widgets/common/video_buttons.dart';
import 'package:simil_tiktok/presentation/widgets/video/fullscreen_player.dart';

class VideoScollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(children: [
          // video
          SizedBox.expand(
              child: FullScreenPlayer(
            caption: videoPost.caption,
            videoUrl: videoPost.videoUrl,
          )),
          Positioned(
            bottom: 40,
            right: 20,
            child: VideoButtons(video: videoPost),
          )
        ]);
      },
    );
  }
}
