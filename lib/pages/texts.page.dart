import 'package:android_design/models/page.model.dart';
import 'package:android_design/widgets/divider.widget.dart';
import 'package:android_design/widgets/title.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextsPage extends StatelessWidget {
  final List<DroidPage> items;
  const TextsPage({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              color: Colors.grey[200]!,
            ),
            borderRadius: BorderRadius.circular(9),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView.separated(
              itemBuilder: (_, index) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DroidTitle(
                    title: items[index].textTitle,
                  ),
                  IconButton(
                      onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => items[index].page,
                            ),
                          ),
                      icon: const Icon(
                        CupertinoIcons.arrow_right,
                        color: Color.fromARGB(255, 66, 133, 244),
                      ))
                ],
              ),
              separatorBuilder: (_, __) => const DroidDivider(),
              itemCount: items.length,
            ),
          ),
        ),
      ),
    );
  }
}
