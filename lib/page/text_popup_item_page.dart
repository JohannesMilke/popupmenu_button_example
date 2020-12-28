import 'package:flutter/material.dart';
import 'package:popupmenu_button_example/data/text_menu.dart';
import 'package:popupmenu_button_example/main.dart';
import 'package:popupmenu_button_example/utils.dart';

class TextPopupItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
          actions: [
            PopupMenuButton<String>(
              onSelected: (value) {
                switch (value) {
                  case TextsMenu.settings:
                    Utils.showSnackbar(context, 'Selected: Settings');
                    break;
                  case TextsMenu.share:
                    Utils.showSnackbar(context, 'Selected: Share');
                    break;
                  case TextsMenu.logout:
                    Utils.showSnackbar(context, 'Selected: Logout');
                    break;
                }
              },
              itemBuilder: (context) => TextsMenu.items
                  .map((item) => PopupMenuItem<String>(
                        value: item,
                        child: Text(item),
                      ))
                  .toList(),
            ),
          ],
        ),
        body: Container(),
      );
}
