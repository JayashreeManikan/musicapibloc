import 'package:musicapibloc/generated/json/base/json_field.dart';
import 'package:musicapibloc/generated/json/rock_entity.g.dart';
import 'dart:convert';
export 'package:musicapibloc/generated/json/rock_entity.g.dart';

@JsonSerializable()
class RockEntity {
	late int resultCount;
	late List<RockResults> results;

	RockEntity();

	factory RockEntity.fromJson(Map<String, dynamic> json) => $RockEntityFromJson(json);

	Map<String, dynamic> toJson() => $RockEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RockResults {
	late String wrapperType;
	late String kind;
	late int artistId;
	late int collectionId;
	late int trackId;
	late String artistName;
	late String collectionName;
	late String trackName;
	late String collectionCensoredName;
	late String trackCensoredName;
	late String artistViewUrl;
	late String collectionViewUrl;
	late String trackViewUrl;
	late String previewUrl;
	late String artworkUrl30;
	late String artworkUrl60;
	late String artworkUrl100;
	late double collectionPrice;
	late double trackPrice;
	late String releaseDate;
	late String collectionExplicitness;
	late String trackExplicitness;
	late int discCount;
	late int discNumber;
	late int trackCount;
	late int trackNumber;
	late int trackTimeMillis;
	late String country;
	late String currency;
	late String primaryGenreName;
	late bool isStreamable;
	late String contentAdvisoryRating;
	late String collectionArtistName;
	late int collectionArtistId;
	late String collectionArtistViewUrl;
	late double trackRentalPrice;
	late double collectionHdPrice;
	late double trackHdPrice;
	late double trackHdRentalPrice;
	late String shortDescription;
	late String longDescription;

	RockResults();

	factory RockResults.fromJson(Map<String, dynamic> json) => $RockResultsFromJson(json);

	Map<String, dynamic> toJson() => $RockResultsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}