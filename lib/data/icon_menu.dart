import 'package:flutter/material.dart';

class IconsMenu {
  static const items = <IconMenu>[
    favourite,
    bookmark,
    share,
  ];

  static const favourite = IconMenu(
    text: 'Favourite',
    icon: Icons.favorite_border,
  );

  static const bookmark = IconMenu(
    text: 'Bookmark',
    icon: Icons.bookmark_border,
  );

  static const share = IconMenu(
    text: 'Share',
    icon: Icons.share,
  );
}

class IconMenu {
  final String text;
  final IconData icon;

  const IconMenu({
    @required this.text,
    @required this.icon,
  });
}
