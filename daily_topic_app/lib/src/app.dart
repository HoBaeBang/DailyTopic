import 'package:daily_topic_app/src/components/image_data.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(child: Scaffold(
      appBar: AppBar(),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: ImageData(IconsPath.homeOff),
            activeIcon: ImageData(IconsPath.homeOn),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageData(IconsPath.searchOff),
            activeIcon: ImageData(IconsPath.searchOn),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageData(IconsPath.uploadIcon),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageData(IconsPath.activeOff),
            activeIcon: ImageData(IconsPath.activeOn),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon:Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                  shape:BoxShape.circle,
                  color: Colors.grey),
            ),
            label: 'Home',
          ),
        ],
      ),
    ), onWillPop: () async{
      return false;
    });
  }
}
