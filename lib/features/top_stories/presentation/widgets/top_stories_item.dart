import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../data/models/top_stories_db_model.dart';
import '../detail/top_Stories_detail.dart';

class TopStoriesItem extends StatelessWidget {
  final ResultView item;

  const TopStoriesItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  item.multimedia[0].url,
                  fit: BoxFit.contain,
                  loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.result.section, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w200, color: Colors.white)),
                    const SizedBox(height: 16),
                    Text(item.result.subsection, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w200, color: Colors.white)),
                    const SizedBox(height: 16),
                    Text(item.result.title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              DateFormat('d.MM.yyyy').format(item.result.updatedDate),
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
            ),
          ),
        ],
      ),
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TopStoriesDetail(item: item))),
    );
  }
}