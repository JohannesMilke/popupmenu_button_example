import 'package:flutter/material.dart';
import 'package:popupmenu_button_example/data/icon_menu.dart';
import 'package:popupmenu_button_example/data/text_menu.dart';
import 'package:popupmenu_button_example/main.dart';
import 'package:popupmenu_button_example/utils.dart';

class IconPopupItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
          actions: [
            PopupMenuButton<IconMenu>(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              onSelected: (value) {
                switch (value) {
                  case IconsMenu.favourite:
                    Utils.showSnackbar(context, 'Selected: Favourite');
                    break;
                  case IconsMenu.bookmark:
                    Utils.showSnackbar(context, 'Selected: Bookmark');
                    break;
                  case IconsMenu.share:
                    Utils.showSnackbar(context, 'Selected: Share');
                    break;
                }
              },
              itemBuilder: (context) => IconsMenu.items
                  .map((item) => PopupMenuItem<IconMenu>(
                        value: item,
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(item.icon, color: Colors.pink),
                          title: Text(item.text),
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
        body: Container(),
      );
}
