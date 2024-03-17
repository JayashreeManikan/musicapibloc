import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:musicapibloc/Data/MusicRepository.dart';
import 'package:musicapibloc/Data/model/classiclist.dart';
import '../../Data/model/poplist.dart';
import '../../Data/model/rocklist.dart';
import 'ClassicScreen.dart';
import 'PopScreen.dart';
import 'RockScreen.dart';
import 'package:musicapibloc/main.dart';


final classicBox = Hive.box<classiclist>('classicBox');
final popBox = Hive.box<poplist>('popBox');
final rockBox = Hive.box<rocklist>('rockBox');
final repository = MusicRepository(classicBox: classicBox, popBox: popBox, rockBox: rockBox,);

class TabContainerBottom extends StatefulWidget {

  TabContainerBottom({Key? key}) : super(key: key);

  @override
  _TabContainerBottomState createState() {
    return _TabContainerBottomState();
  }
}

class _TabContainerBottomState extends State<TabContainerBottom> {
  int tabIndex = 0;
  late List<Widget> listScreens;
  //  final classicBox = Box<classiclist>;
  //
  // final popBox = Box<poplist>;
  //
  // late final Box<rocklist> rockBox;

  @override
  void initState() {

    final classicBox = Hive.box<classiclist>('classicBox');
    final popBox = Hive.box<poplist>('popBox');
    final rockBox = Hive.box<rocklist>('rockBox');

    super.initState();
    listScreens = [
      ClassicScreen(repository:MusicRepository(classicBox: classicBox, popBox: popBox, rockBox: rockBox)),
      PopScreen(repository:MusicRepository(classicBox: classicBox, popBox: popBox, rockBox: rockBox)),
      RockScreen(repository:MusicRepository(classicBox: classicBox, popBox: popBox, rockBox: rockBox)),
      
    ];
  }

//  @override
//  bool get wantKeepAlive =>
//      true; //by default it will be null, change it to true.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: Scaffold(
        body: listScreens[tabIndex],
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey[400],
            backgroundColor: Theme.of(context).primaryColor,
            currentIndex: tabIndex,
            onTap: (int index) {
              setState(() {
                tabIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.music_note),
                label:'Classic',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.music_note),
                label:'Pop',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.music_note),
                label:'Rock',
              ),
            ]),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}