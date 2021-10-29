import 'package:flutter/material.dart';

class DroidIconActive extends StatelessWidget {
  final Widget icon;
  const DroidIconActive({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 3,
          width: 50,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(6),
              bottomRight: Radius.circular(6),
            ),
          ),
        ),
        icon,
      ],
    );
  }
}
