import 'package:hive/hive.dart';

part 'poplist.g.dart';

@HiveType(typeId: 1)
class poplist {
  @HiveField(0)
  final String trackname;

  @HiveField(1)
  final String country;

  @HiveField(2)
  final String artistname;

  poplist({
    required this.trackname,
    required this.country,
    required this.artistname,
  });
}