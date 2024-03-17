import 'package:hive/hive.dart';
part 'rocklist.g.dart';



@HiveType(typeId: 2)
class rocklist {
  @HiveField(0)
  final String trackname;

  @HiveField(1)
  final String country;

  @HiveField(2)
  final String artistname;

  rocklist({
    required this.trackname,
    required this.country,
    required this.artistname,
  });
}