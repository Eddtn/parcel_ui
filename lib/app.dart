import 'package:flutter/material.dart';
import 'package:parcel/parcel_app_theme.dart';
import 'package:parcel/ui/screens/scrren.dart';
import 'package:parcel/widgets/bottom_navigation_bar.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int homeSelectedIndex = 0;

  changeSelectedIndex(index) {
    setState(() {
      homeSelectedIndex = index;
    });
  }

  List screen = const [
    HomeScreen(),
    SendParcelScreen(),
    ParcelCenterScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ParcelAppTheme.lightTheme,
      home: Scaffold(
        body: screen[homeSelectedIndex],
        bottomNavigationBar: AppBottomNavigationBar(
          selectedIndex: homeSelectedIndex,
          onTap: changeSelectedIndex,
        ),
      ),
    );
  }
}
