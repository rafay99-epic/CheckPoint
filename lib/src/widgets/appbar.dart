import 'package:flutter/material.dart';
import 'package:todo/src/constants/colors.dart';

class CAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData iconData;
  final VoidCallback? onIconPressed;

  const CAppBar({
    Key? key,
    required this.title,
    required this.iconData,
    this.onIconPressed,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: tdBGColor,
      actions: <Widget>[
        IconButton(
          icon: Icon(iconData),
          onPressed: onIconPressed,
        ),
      ],
    );
  }
}
