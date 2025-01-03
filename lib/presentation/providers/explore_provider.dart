import 'package:flutter/material.dart';
import 'package:simil_tiktok/domain/entities/video_post.dart';
import 'package:simil_tiktok/domain/repositories/video_post_repository.dart';

class ExploreProvider extends ChangeNotifier {
  final VideoPostRepository videoPostRepository;
  //TODO: Repository and dataSource

  bool initialLoading = true;
  List<VideoPost> videos = [];
  bool isPlaying = true;

  ExploreProvider({required this.videoPostRepository});

  Future<void> loadVieos() async {
    //TODO: charge videos from shared/data

    // await Future.delayed(Duration(seconds: 2));

    // final List<VideoPost> newVideos = videoPosts
    //     .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
    //     .toList();
    final newVideos = await videoPostRepository.getVideoPosts(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }

  void changePlaying() {
    isPlaying = !isPlaying;
    notifyListeners();
  }
}
