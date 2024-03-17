

import 'package:hive/hive.dart';
import 'package:musicapibloc/Data/DataProvider.dart';
import 'package:http/http.dart' as http;
import 'package:musicapibloc/Data/model/classiclist.dart';
import 'model/poplist.dart';

import 'model/rocklist.dart';

class  MusicRepository {

  final DataProvider _dataProvider;
   final Box<classiclist> classicBox;
   final Box<poplist> popBox;
  final Box<rocklist> rockBox;

  MusicRepository({DataProvider? dataProvider, required this.classicBox,required this.popBox,required this.rockBox})
      : _dataProvider = dataProvider ?? DataProvider(classicBox: classicBox, popBox: popBox, rockBox: rockBox);

  Future<List<classiclist>> getClassic() async {
    final classiclist = await _dataProvider.fetchClassic();
    return classiclist;
  }

  Future<List<poplist>> getPop() async {
    final poplist = await _dataProvider.fetchPop();
    return poplist;
  }

  Future<List<rocklist>> getRock() async {
    final rocklist = await _dataProvider.fetchRock();
    return rocklist;
  }

}