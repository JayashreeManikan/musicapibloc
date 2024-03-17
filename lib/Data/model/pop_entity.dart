import 'package:musicapibloc/generated/json/base/json_field.dart';
import 'package:musicapibloc/generated/json/pop_entity.g.dart';
import 'dart:convert';
export 'package:musicapibloc/generated/json/pop_entity.g.dart';

@JsonSerializable()
class PopEntity {
	late int resultCount;
	late List<PopResults> results;

	PopEntity();

	factory PopEntity.fromJson(Map<String, dynamic> json) => $PopEntityFromJson(json);

	Map<String, dynamic> toJson() => $PopEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PopResults {
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
	late int collectionArtistId;
	late String collectionArtistName;
	late String copyright;
	late String description;
	late String collectionArtistViewUrl;

	PopResults();

	factory PopResults.fromJson(Map<String, dynamic> json) => $PopResultsFromJson(json);

	Map<String, dynamic> toJson() => $PopResultsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}