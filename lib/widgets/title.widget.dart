import 'package:flutter/material.dart';

class DroidTitle extends StatelessWidget {
  final String title;
  const DroidTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
