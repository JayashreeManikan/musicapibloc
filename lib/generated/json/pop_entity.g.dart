import 'package:musicapibloc/generated/json/base/json_convert_content.dart';
import 'package:musicapibloc/Data/model/pop_entity.dart';

PopEntity $PopEntityFromJson(Map<String, dynamic> json) {
  final PopEntity popEntity = PopEntity();
  final int? resultCount = jsonConvert.convert<int>(json['resultCount']);
  if (resultCount != null) {
    popEntity.resultCount = resultCount;
  }
  final List<PopResults>? results = (json['results'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<PopResults>(e) as PopResults).toList();
  if (results != null) {
    popEntity.results = results;
  }
  return popEntity;
}

Map<String, dynamic> $PopEntityToJson(PopEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['resultCount'] = entity.resultCount;
  data['results'] = entity.results.map((v) => v.toJson()).toList();
  return data;
}

extension PopEntityExtension on PopEntity {
  PopEntity copyWith({
    int? resultCount,
    List<PopResults>? results,
  }) {
    return PopEntity()
      ..resultCount = resultCount ?? this.resultCount
      ..results = results ?? this.results;
  }
}

PopResults $PopResultsFromJson(Map<String, dynamic> json) {
  final PopResults popResults = PopResults();
  final String? wrapperType = jsonConvert.convert<String>(json['wrapperType']);
  if (wrapperType != null) {
    popResults.wrapperType = wrapperType;
  }
  final String? kind = jsonConvert.convert<String>(json['kind']);
  if (kind != null) {
    popResults.kind = kind;
  }
  final int? artistId = jsonConvert.convert<int>(json['artistId']);
  if (artistId != null) {
    popResults.artistId = artistId;
  }
  final int? collectionId = jsonConvert.convert<int>(json['collectionId']);
  if (collectionId != null) {
    popResults.collectionId = collectionId;
  }
  final int? trackId = jsonConvert.convert<int>(json['trackId']);
  if (trackId != null) {
    popResults.trackId = trackId;
  }
  final String? artistName = jsonConvert.convert<String>(json['artistName']);
  if (artistName != null) {
    popResults.artistName = artistName;
  }
  final String? collectionName = jsonConvert.convert<String>(
      json['collectionName']);
  if (collectionName != null) {
    popResults.collectionName = collectionName;
  }
  final String? trackName = jsonConvert.convert<String>(json['trackName']);
  if (trackName != null) {
    popResults.trackName = trackName;
  }
  final String? collectionCensoredName = jsonConvert.convert<String>(
      json['collectionCensoredName']);
  if (collectionCensoredName != null) {
    popResults.collectionCensoredName = collectionCensoredName;
  }
  final String? trackCensoredName = jsonConvert.convert<String>(
      json['trackCensoredName']);
  if (trackCensoredName != null) {
    popResults.trackCensoredName = trackCensoredName;
  }
  final String? artistViewUrl = jsonConvert.convert<String>(
      json['artistViewUrl']);
  if (artistViewUrl != null) {
    popResults.artistViewUrl = artistViewUrl;
  }
  final String? collectionViewUrl = jsonConvert.convert<String>(
      json['collectionViewUrl']);
  if (collectionViewUrl != null) {
    popResults.collectionViewUrl = collectionViewUrl;
  }
  final String? trackViewUrl = jsonConvert.convert<String>(
      json['trackViewUrl']);
  if (trackViewUrl != null) {
    popResults.trackViewUrl = trackViewUrl;
  }
  final String? previewUrl = jsonConvert.convert<String>(json['previewUrl']);
  if (previewUrl != null) {
    popResults.previewUrl = previewUrl;
  }
  final String? artworkUrl30 = jsonConvert.convert<String>(
      json['artworkUrl30']);
  if (artworkUrl30 != null) {
    popResults.artworkUrl30 = artworkUrl30;
  }
  final String? artworkUrl60 = jsonConvert.convert<String>(
      json['artworkUrl60']);
  if (artworkUrl60 != null) {
    popResults.artworkUrl60 = artworkUrl60;
  }
  final String? artworkUrl100 = jsonConvert.convert<String>(
      json['artworkUrl100']);
  if (artworkUrl100 != null) {
    popResults.artworkUrl100 = artworkUrl100;
  }
  final double? collectionPrice = jsonConvert.convert<double>(
      json['collectionPrice']);
  if (collectionPrice != null) {
    popResults.collectionPrice = collectionPrice;
  }
  final double? trackPrice = jsonConvert.convert<double>(json['trackPrice']);
  if (trackPrice != null) {
    popResults.trackPrice = trackPrice;
  }
  final String? releaseDate = jsonConvert.convert<String>(json['releaseDate']);
  if (releaseDate != null) {
    popResults.releaseDate = releaseDate;
  }
  final String? collectionExplicitness = jsonConvert.convert<String>(
      json['collectionExplicitness']);
  if (collectionExplicitness != null) {
    popResults.collectionExplicitness = collectionExplicitness;
  }
  final String? trackExplicitness = jsonConvert.convert<String>(
      json['trackExplicitness']);
  if (trackExplicitness != null) {
    popResults.trackExplicitness = trackExplicitness;
  }
  final int? discCount = jsonConvert.convert<int>(json['discCount']);
  if (discCount != null) {
    popResults.discCount = discCount;
  }
  final int? discNumber = jsonConvert.convert<int>(json['discNumber']);
  if (discNumber != null) {
    popResults.discNumber = discNumber;
  }
  final int? trackCount = jsonConvert.convert<int>(json['trackCount']);
  if (trackCount != null) {
    popResults.trackCount = trackCount;
  }
  final int? trackNumber = jsonConvert.convert<int>(json['trackNumber']);
  if (trackNumber != null) {
    popResults.trackNumber = trackNumber;
  }
  final int? trackTimeMillis = jsonConvert.convert<int>(
      json['trackTimeMillis']);
  if (trackTimeMillis != null) {
    popResults.trackTimeMillis = trackTimeMillis;
  }
  final String? country = jsonConvert.convert<String>(json['country']);
  if (country != null) {
    popResults.country = country;
  }
  final String? currency = jsonConvert.convert<String>(json['currency']);
  if (currency != null) {
    popResults.currency = currency;
  }
  final String? primaryGenreName = jsonConvert.convert<String>(
      json['primaryGenreName']);
  if (primaryGenreName != null) {
    popResults.primaryGenreName = primaryGenreName;
  }
  final bool? isStreamable = jsonConvert.convert<bool>(json['isStreamable']);
  if (isStreamable != null) {
    popResults.isStreamable = isStreamable;
  }
  final String? contentAdvisoryRating = jsonConvert.convert<String>(
      json['contentAdvisoryRating']);
  if (contentAdvisoryRating != null) {
    popResults.contentAdvisoryRating = contentAdvisoryRating;
  }
  final int? collectionArtistId = jsonConvert.convert<int>(
      json['collectionArtistId']);
  if (collectionArtistId != null) {
    popResults.collectionArtistId = collectionArtistId;
  }
  final String? collectionArtistName = jsonConvert.convert<String>(
      json['collectionArtistName']);
  if (collectionArtistName != null) {
    popResults.collectionArtistName = collectionArtistName;
  }
  final String? copyright = jsonConvert.convert<String>(json['copyright']);
  if (copyright != null) {
    popResults.copyright = copyright;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    popResults.description = description;
  }
  final String? collectionArtistViewUrl = jsonConvert.convert<String>(
      json['collectionArtistViewUrl']);
  if (collectionArtistViewUrl != null) {
    popResults.collectionArtistViewUrl = collectionArtistViewUrl;
  }
  return popResults;
}

Map<String, dynamic> $PopResultsToJson(PopResults entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['wrapperType'] = entity.wrapperType;
  data['kind'] = entity.kind;
  data['artistId'] = entity.artistId;
  data['collectionId'] = entity.collectionId;
  data['trackId'] = entity.trackId;
  data['artistName'] = entity.artistName;
  data['collectionName'] = entity.collectionName;
  data['trackName'] = entity.trackName;
  data['collectionCensoredName'] = entity.collectionCensoredName;
  data['trackCensoredName'] = entity.trackCensoredName;
  data['artistViewUrl'] = entity.artistViewUrl;
  data['collectionViewUrl'] = entity.collectionViewUrl;
  data['trackViewUrl'] = entity.trackViewUrl;
  data['previewUrl'] = entity.previewUrl;
  data['artworkUrl30'] = entity.artworkUrl30;
  data['artworkUrl60'] = entity.artworkUrl60;
  data['artworkUrl100'] = entity.artworkUrl100;
  data['collectionPrice'] = entity.collectionPrice;
  data['trackPrice'] = entity.trackPrice;
  data['releaseDate'] = entity.releaseDate;
  data['collectionExplicitness'] = entity.collectionExplicitness;
  data['trackExplicitness'] = entity.trackExplicitness;
  data['discCount'] = entity.discCount;
  data['discNumber'] = entity.discNumber;
  data['trackCount'] = entity.trackCount;
  data['trackNumber'] = entity.trackNumber;
  data['trackTimeMillis'] = entity.trackTimeMillis;
  data['country'] = entity.country;
  data['currency'] = entity.currency;
  data['primaryGenreName'] = entity.primaryGenreName;
  data['isStreamable'] = entity.isStreamable;
  data['contentAdvisoryRating'] = entity.contentAdvisoryRating;
  data['collectionArtistId'] = entity.collectionArtistId;
  data['collectionArtistName'] = entity.collectionArtistName;
  data['copyright'] = entity.copyright;
  data['description'] = entity.description;
  data['collectionArtistViewUrl'] = entity.collectionArtistViewUrl;
  return data;
}

extension PopResultsExtension on PopResults {
  PopResults copyWith({
    String? wrapperType,
    String? kind,
    int? artistId,
    int? collectionId,
    int? trackId,
    String? artistName,
    String? collectionName,
    String? trackName,
    String? collectionCensoredName,
    String? trackCensoredName,
    String? artistViewUrl,
    String? collectionViewUrl,
    String? trackViewUrl,
    String? previewUrl,
    String? artworkUrl30,
    String? artworkUrl60,
    String? artworkUrl100,
    double? collectionPrice,
    double? trackPrice,
    String? releaseDate,
    String? collectionExplicitness,
    String? trackExplicitness,
    int? discCount,
    int? discNumber,
    int? trackCount,
    int? trackNumber,
    int? trackTimeMillis,
    String? country,
    String? currency,
    String? primaryGenreName,
    bool? isStreamable,
    String? contentAdvisoryRating,
    int? collectionArtistId,
    String? collectionArtistName,
    String? copyright,
    String? description,
    String? collectionArtistViewUrl,
  }) {
    return PopResults()
      ..wrapperType = wrapperType ?? this.wrapperType
      ..kind = kind ?? this.kind
      ..artistId = artistId ?? this.artistId
      ..collectionId = collectionId ?? this.collectionId
      ..trackId = trackId ?? this.trackId
      ..artistName = artistName ?? this.artistName
      ..collectionName = collectionName ?? this.collectionName
      ..trackName = trackName ?? this.trackName
      ..collectionCensoredName = collectionCensoredName ??
          this.collectionCensoredName
      ..trackCensoredName = trackCensoredName ?? this.trackCensoredName
      ..artistViewUrl = artistViewUrl ?? this.artistViewUrl
      ..collectionViewUrl = collectionViewUrl ?? this.collectionViewUrl
      ..trackViewUrl = trackViewUrl ?? this.trackViewUrl
      ..previewUrl = previewUrl ?? this.previewUrl
      ..artworkUrl30 = artworkUrl30 ?? this.artworkUrl30
      ..artworkUrl60 = artworkUrl60 ?? this.artworkUrl60
      ..artworkUrl100 = artworkUrl100 ?? this.artworkUrl100
      ..collectionPrice = collectionPrice ?? this.collectionPrice
      ..trackPrice = trackPrice ?? this.trackPrice
      ..releaseDate = releaseDate ?? this.releaseDate
      ..collectionExplicitness = collectionExplicitness ??
          this.collectionExplicitness
      ..trackExplicitness = trackExplicitness ?? this.trackExplicitness
      ..discCount = discCount ?? this.discCount
      ..discNumber = discNumber ?? this.discNumber
      ..trackCount = trackCount ?? this.trackCount
      ..trackNumber = trackNumber ?? this.trackNumber
      ..trackTimeMillis = trackTimeMillis ?? this.trackTimeMillis
      ..country = country ?? this.country
      ..currency = currency ?? this.currency
      ..primaryGenreName = primaryGenreName ?? this.primaryGenreName
      ..isStreamable = isStreamable ?? this.isStreamable
      ..contentAdvisoryRating = contentAdvisoryRating ??
          this.contentAdvisoryRating
      ..collectionArtistId = collectionArtistId ?? this.collectionArtistId
      ..collectionArtistName = collectionArtistName ?? this.collectionArtistName
      ..copyright = copyright ?? this.copyright
      ..description = description ?? this.description
      ..collectionArtistViewUrl = collectionArtistViewUrl ??
          this.collectionArtistViewUrl;
  }
}