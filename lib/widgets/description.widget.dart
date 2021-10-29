import 'package:flutter/material.dart';

class DroidDescription extends StatelessWidget {
  final String description;
  const DroidDescription({
    Key? key,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        description,
        style: Theme.of(context).textTheme.bodyText2,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
