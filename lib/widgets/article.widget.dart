import 'package:android_design/widgets/description.widget.dart';
import 'package:android_design/widgets/divider.widget.dart';
import 'package:android_design/widgets/title.widget.dart';
import 'package:flutter/material.dart';

class DroidArticle extends StatelessWidget {
  final String title, description;
  const DroidArticle({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            DroidTitle(title: title),
            const DroidDivider(),
            DroidDescription(
              description: description,
            ),
          ],
        ),
      ),
    );
  }
}
