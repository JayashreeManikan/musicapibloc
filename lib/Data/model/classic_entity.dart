import 'package:musicapibloc/generated/json/base/json_field.dart';
import 'package:musicapibloc/generated/json/classic_entity.g.dart';
import 'dart:convert';
export 'package:musicapibloc/generated/json/classic_entity.g.dart';

@JsonSerializable()
class ClassicEntity {
	late int resultCount;
	late List<ClassicResults> results;

	ClassicEntity();

	factory ClassicEntity.fromJson(Map<String, dynamic> json) => $ClassicEntityFromJson(json);

	Map<String, dynamic> toJson() => $ClassicEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ClassicResults {
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
	late int collectionArtistId;
	late String collectionArtistName;
	late String collectionArtistViewUrl;
	late double trackRentalPrice;
	late double collectionHdPrice;
	late double trackHdPrice;
	late double trackHdRentalPrice;
	late String contentAdvisoryRating;
	late String longDescription;
	late bool hasITunesExtras;
	late String shortDescription;
	late String description;

	ClassicResults();

	factory ClassicResults.fromJson(Map<String, dynamic> json) => $ClassicResultsFromJson(json);

	Map<String, dynamic> toJson() => $ClassicResultsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}