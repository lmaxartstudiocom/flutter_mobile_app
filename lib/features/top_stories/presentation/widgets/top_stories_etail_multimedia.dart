import 'package:flutter/material.dart';

import '../../data/models/top_stories_db_model.dart';

class TopStoriesDetailMultimedia extends StatelessWidget {
  final MultimediaDB multimedia;

  const TopStoriesDetailMultimedia({super.key, required this.multimedia});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        const SizedBox(height: 16),
        SizedBox(width: MediaQuery.of(context).size.width, child: Image.network(multimedia.url, fit: BoxFit.contain)),
        Text(multimedia.caption, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white)),
        const SizedBox(height: 16),
      ],
    );
  }
}
