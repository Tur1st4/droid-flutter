import 'package:flutter/material.dart';

class DroidDivider extends StatelessWidget {
  const DroidDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12.0),
      child: Divider(),
    );
  }
}
