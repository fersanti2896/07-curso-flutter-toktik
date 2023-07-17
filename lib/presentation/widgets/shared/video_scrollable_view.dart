
import 'package:flutter/material.dart';
import 'package:toktik_app/domain/entities/videos_post.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({
    super.key,
    required this.videos
  });
  
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      children: [
        Container(color: Colors.blueAccent),
        Container(color: Colors.amber),
        Container(color: Colors.deepOrange),
      ],
    );
  }
}