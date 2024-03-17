import 'package:hive/hive.dart';
part 'classiclist.g.dart';


@HiveType(typeId: 0)
class classiclist {
  @HiveField(0)
  final String trackname;

  @HiveField(1)
  final String country;

  @HiveField(2)
   final String artistname;

  classiclist({
    required this.trackname,
    required this.country,
    required this.artistname,
  });
}