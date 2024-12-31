import 'package:simil_tiktok/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;
  final int commentsQuantity;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
    this.commentsQuantity = 0,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) {
    return LocalVideoModel(
      name: json['name'] ?? 'no name',
      videoUrl: json['videoUrl'] ?? 'no url',
      likes: json['likes'],
      views: json['views'],
      commentsQuantity: json['comments'],
    );
  }

  VideoPost toVideoPostEntity() {
    return VideoPost(
      caption: name,
      videoUrl: videoUrl,
      likesQuantity: likes,
      views: views,
      commentsQuantity: commentsQuantity,
    );
  }
}
