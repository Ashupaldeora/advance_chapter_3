import 'package:flutter/material.dart';

import '../models/data.dart';
import 'category.dart';
import 'content_containers.dart';

class FullScreen extends StatelessWidget {
  const FullScreen({
    super.key,
    required this.categories,
  });

  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
          child: ListView.builder(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                CategoryItem(category: categories[index]),
          ),
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) => contentContainers(
                    index: index,
                  )),
        )
      ],
    );
  }
}
