import 'package:simil_tiktok/domain/dataSources/video_post_datasource.dart';
import 'package:simil_tiktok/domain/entities/video_post.dart';
import 'package:simil_tiktok/infra/models/local_video_model.dart';
import 'package:simil_tiktok/shared/data/local_video_posts.dart';

class LocalVideoDatasourceImpl implements VideoPostsDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideos(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getVideoPosts(int page) async {
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();
    return newVideos;
  }
}
