import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'Data/MusicRepository.dart';
import 'Data/model/classiclist.dart';
import 'Data/model/poplist.dart';
import 'Data/model/rocklist.dart';
import 'Presentation/screens/tabContainer.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(classiclistAdapter());
  Hive.registerAdapter(rocklistAdapter());
 Hive.registerAdapter(poplistAdapter());
  await Hive.openBox<classiclist>('classicBox');
  await Hive.openBox<poplist>('popBox');
  await Hive.openBox<rocklist>('rockBox');
  final classicBox = Hive.box<classiclist>('classicBox');
  final popBox = Hive.box<poplist>('popBox');
  final rockBox = Hive.box<rocklist>('rockBox');
  //final repository = MusicRepository(classicBox: classicBox, popBox: popBox, rockBox: rockBox,);
    runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  TabContainerBottom(),
    );
  }
}


