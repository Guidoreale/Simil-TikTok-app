import 'package:simil_tiktok/domain/dataSources/video_post_datasource.dart';
import 'package:simil_tiktok/domain/entities/video_post.dart';
import 'package:simil_tiktok/domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostsDatasource videosDataSource;

  VideoPostsRepositoryImpl({required this.videosDataSource});

  @override
  Future<List<VideoPost>> getFavoriteVideos(String userId) {
    // TODO: implement getFavoriteVideos
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getVideoPosts(int page) {
    return videosDataSource.getVideoPosts(page);
  }
}
