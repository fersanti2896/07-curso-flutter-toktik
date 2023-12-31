
import 'package:flutter/material.dart';
import 'package:toktik_app/domain/entities/videos_post.dart';
import 'package:toktik_app/infrastructure/models/local_video_model.dart';
import 'package:toktik_app/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  // TODO: Repository, DataSource
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 3));
    
    final List<VideoPost> newVideos = videoPosts.map(
      (video) => LocalVideoModel.fromJson(video).toVideoPostEntity()
    ).toList();

    videos.addAll(newVideos);
    initialLoading = false;
    //TODO: Cargar videos
    notifyListeners();
  }
}