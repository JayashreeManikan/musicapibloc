
import 'dart:async';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:musicapibloc/Data/model/classiclist.dart';
import 'dart:convert';
import 'model/poplist.dart';
import 'model/rocklist.dart';

class DataProvider {

   final Box<classiclist> classicBox;
   final Box<poplist> popBox;
   final Box<rocklist> rockBox;

  DataProvider({required this.classicBox,required this.popBox,required this.rockBox});

  String url1 ='https://itunes.apple.com/search?term=classick&amp;media=music&amp;entity=song&amp;limit=50';
  String url2 = 'https://itunes.apple.com/search?term=pop&amp;media=music&amp;entity=song&amp;limit=50';
  String url3 = 'https://itunes.apple.com/search?term=rock&amp;media=music&amp;entity=song&amp;limit=50';

  Future<List<classiclist>> fetchClassic() async {
    if (classicBox.isNotEmpty) {
      print("HIVE CACHE");
      return classicBox.values.toList();
    } else {
      print("NO HIVE CACHE");

      final response = await http.get(Uri.parse(url1));
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        final classicData = jsonData['results'] as List<dynamic>;
        final classics = classicData.map((json) {
          return classiclist(
            trackname: json['trackName'],
            country: json['country'],
            artistname: json['artistName'],
          );
        }).toList();
        classicBox.addAll(classics);

        return classics;
      } else {
        throw Exception("Failed Exception");
      }
    }
  }


  Future<List<poplist>> fetchPop() async {
    if (popBox.isNotEmpty) {
      print("HIVE CACHE");
      return popBox.values.toList();
    } else {
      print("NO HIVE CACHE");

      final response = await http.get(Uri.parse(url2));

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        final popData = jsonData['results'] as List<dynamic>;
        final pops = popData.map((json) {
          return poplist(
            trackname: json['trackName'],
            country: json['country'],
            artistname: json['artistName'],
          );
        }).toList();
        popBox.addAll(pops);
        return pops;
      } else {
        throw Exception("Failed Exception");
      }
    }
  }


  Future<List<rocklist>> fetchRock() async {
    if (rockBox.isNotEmpty) {
      print("HIVE CACHE");
      return rockBox.values.toList();
    } else {
      print("NO HIVE CACHE");

      final response = await http.get(Uri.parse(url3));

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        final rockData = jsonData['results'] as List<dynamic>;
        final rocks = rockData.map((json) {
          return rocklist(
            trackname: json['trackName'],
            country: json['country'],
            artistname: json['artistName'],
          );
        }).toList();
        rockBox.addAll(rocks);
        return rocks;
      } else {
        throw Exception("Failed Exception");
      }
    }
  }



}



