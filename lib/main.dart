import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:popupmenu_button_example/page/icon_popup_item_page.dart';
import 'package:popupmenu_button_example/page/text_popup_item_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Popup Menu Button';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primaryColor: Colors.black),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 1;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: buildPages(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          selectedItemColor: Colors.red,
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white70,
          items: [
            BottomNavigationBarItem(
              icon: Text('PopupMenu', style: TextStyle(color: Colors.white)),
              title: Text('Simple'),
            ),
            BottomNavigationBarItem(
              icon: Text('PopupMenu', style: TextStyle(color: Colors.white)),
              title: Text('Advanced'),
            ),
          ],
          onTap: (int index) => setState(() => this.index = index),
        ),
      );

  Widget buildPages() {
    switch (index) {
      case 0:
        return TextPopupItemPage();
      case 1:
        return IconPopupItemPage();
      default:
        return Container();
    }
  }
}
