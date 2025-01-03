import 'package:simil_tiktok/domain/entities/video_post.dart';

abstract class VideoPostRepository {
  Future<List<VideoPost>> getVideoPosts(int page);

  Future<List<VideoPost>> getFavoriteVideos(String userId);
}
