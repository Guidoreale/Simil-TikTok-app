import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simil_tiktok/config/theme/app_theme.dart';
import 'package:simil_tiktok/presentation/providers/explore_provider.dart';
import 'package:simil_tiktok/presentation/widgets/common/video_scollable_view.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final exploreProvider = context.watch<ExploreProvider>();

    return Scaffold(
      body: exploreProvider.initialLoading
          ? Center(
              child: CircularProgressIndicator(
              strokeWidth: 2,
              color: AppTheme().getTheme().secondaryHeaderColor,
            ))
          : VideoScollableView(
              videos: exploreProvider.videos,
              isPlaying: exploreProvider.isPlaying,
            ),
    );
  }
}
