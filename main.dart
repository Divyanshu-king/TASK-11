import 'package:flutter/material.dart';
import 'package:video_example/page/basics_page.dart';
import 'package:video_example/page/orientation_page.dart';

final urlLandscapeVideo =
                   'https://www.youtube.com/watch?v=rYLHFMjNZjo';
final urlPortraitVideo =
                    'https://www.youtube.com/watch?v=edzt82nC45k';
final urlYoutubeVideo = 'https://www.youtube.com/watch?v=CTmKrwFu7wg';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Video Player',
        theme: ThemeData(
          primaryColor: Colors.blueAccent,
          scaffoldBackgroundColor: Colors.black,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          colorScheme: ColorScheme.dark(),
        ),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: buildBottomBar(),
        body: buildPages(),
      );

  Widget buildBottomBar() {
    final style = TextStyle(color: Colors.white);

    return BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
          icon: Text('VideoPlayer', style: style),
          title: Text('Basics'),
        ),
        BottomNavigationBarItem(
          icon: Text('VideoPlayer', style: style),
          title: Text('Orientation'),
        ),
      ],
      onTap: (int index) => setState(() => this.index = index),
    );
  }

  Widget buildPages() {
    switch (index) {
      case 0:
        return BasicsPage();
      case 1:
        return OrientationPage();
      default:
        return Container();
    }
  }
}
