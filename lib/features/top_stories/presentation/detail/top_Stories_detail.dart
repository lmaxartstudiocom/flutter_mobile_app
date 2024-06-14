import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../data/models/top_stories_db_model.dart';
import '../widgets/top_stories_etail_multimedia.dart';

class TopStoriesDetail extends StatelessWidget {
  final ResultView item;

  const TopStoriesDetail({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 0,
            child: Container(
              color: Theme.of(context).primaryColor,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      DateFormat('d.MM.yyyy').format(item.result.updatedDate),
                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    Text(item.result.section, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w200, color: Colors.white)),
                    const SizedBox(height: 8),
                    Text(item.result.subsection, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w200, color: Colors.white)),
                    const SizedBox(height: 8),
                    Text(item.result.title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(item.multimedia.length, (index) => TopStoriesDetailMultimedia(multimedia: item.multimedia[index])),
              ),
            ),
          )
        ],
      ),
    );
  }
}