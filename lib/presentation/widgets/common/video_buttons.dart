import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:simil_tiktok/config/helpers/format_numbers.dart';
import 'package:simil_tiktok/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
            value: video.likesQuantity,
            iconData: Icons.favorite,
            iconColor: Colors.red),
        SizedBox(height: 10),
        _CustomIconButton(
            value: video.commentsQuantity, iconData: Icons.messenger_outline),
        SizedBox(height: 10),
        _CustomIconButton(
            value: video.views, iconData: Icons.remove_red_eye_outlined),
        SizedBox(height: 10),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 10),
          child: const _CustomIconButton(
              value: 0, iconData: Icons.play_circle_outline),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIconButton(
      {required this.value, required this.iconData, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IconButton(
        onPressed: () => {},
        icon: Icon(
          iconData,
          color: color,
          size: 30,
        ),
      ),
      Text(
        value > 0
            ? (value > 1000
                ? FormatNumbers.formatNumber(value.toDouble())
                : value.toString())
            : '',
      )
    ]);
  }
}
