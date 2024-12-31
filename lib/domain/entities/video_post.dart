class VideoPost {
  final String caption;
  final String videoUrl;
  final int likesQuantity;
  final int commentsQuantity;
  final int views;

  VideoPost(
      {required this.caption,
      required this.videoUrl,
      this.likesQuantity = 0,
      this.commentsQuantity = 0,
      this.views = 0});
}
