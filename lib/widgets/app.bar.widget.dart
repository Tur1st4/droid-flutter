import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DroidBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const DroidBar({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: Navigator.canPop(context)
          ? IconButton(
              icon: const Icon(
                CupertinoIcons.back,
                color: Color.fromARGB(255, 51, 51, 51),
              ),
              onPressed: () => Navigator.of(context).pop(),
            )
          : null,
      title: Text(title),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(
          color: Colors.grey[200],
          height: 1,
        ),
      ),
    );
  }
}
