import 'package:flutter/material.dart';
import 'package:simil_tiktok/domain/entities/video_post.dart';
import 'package:simil_tiktok/infra/models/local_video_model.dart';
import 'package:simil_tiktok/shared/data/local_video_posts.dart';

class ExploreProvider extends ChangeNotifier {
  //TODO: Repository and dataSource

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadVieos() async {
    //TODO: charge videos from shared/data

    await Future.delayed(Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
