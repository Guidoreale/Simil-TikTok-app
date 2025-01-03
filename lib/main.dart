import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simil_tiktok/config/theme/app_theme.dart';
import 'package:simil_tiktok/infra/datasources/local_video_datasource_impl.dart';
import 'package:simil_tiktok/infra/repositories/local_video_repository_impl.dart';
import 'package:simil_tiktok/presentation/providers/explore_provider.dart';
import 'package:simil_tiktok/presentation/screens/explore/explore_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository = VideoPostsRepositoryImpl(
      videosDataSource: LocalVideoDatasourceImpl(),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) =>
              ExploreProvider(videoPostRepository: videoPostRepository)
                ..loadVieos(),
        )
      ],
      child: MaterialApp(
        title: 'Simil TikTok',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: ExploreScreen(),
      ),
    );
  }
}
