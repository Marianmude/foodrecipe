import 'package:flutter/material.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
   Appbar({super.key});

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.arrow_back),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Icon(Icons.more_horiz),
        ),
      ],
    );
  }

   @override
   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
