import 'package:musicapibloc/generated/json/base/json_convert_content.dart';
import 'package:musicapibloc/Data/model/rock_entity.dart';

RockEntity $RockEntityFromJson(Map<String, dynamic> json) {
  final RockEntity rockEntity = RockEntity();
  final int? resultCount = jsonConvert.convert<int>(json['resultCount']);
  if (resultCount != null) {
    rockEntity.resultCount = resultCount;
  }
  final List<RockResults>? results = (json['results'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<RockResults>(e) as RockResults).toList();
  if (results != null) {
    rockEntity.results = results;
  }
  return rockEntity;
}

Map<String, dynamic> $RockEntityToJson(RockEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['resultCount'] = entity.resultCount;
  data['results'] = entity.results.map((v) => v.toJson()).toList();
  return data;
}

extension RockEntityExtension on RockEntity {
  RockEntity copyWith({
    int? resultCount,
    List<RockResults>? results,
  }) {
    return RockEntity()
      ..resultCount = resultCount ?? this.resultCount
      ..results = results ?? this.results;
  }
}

RockResults $RockResultsFromJson(Map<String, dynamic> json) {
  final RockResults rockResults = RockResults();
  final String? wrapperType = jsonConvert.convert<String>(json['wrapperType']);
  if (wrapperType != null) {
    rockResults.wrapperType = wrapperType;
  }
  final String? kind = jsonConvert.convert<String>(json['kind']);
  if (kind != null) {
    rockResults.kind = kind;
  }
  final int? artistId = jsonConvert.convert<int>(json['artistId']);
  if (artistId != null) {
    rockResults.artistId = artistId;
  }
  final int? collectionId = jsonConvert.convert<int>(json['collectionId']);
  if (collectionId != null) {
    rockResults.collectionId = collectionId;
  }
  final int? trackId = jsonConvert.convert<int>(json['trackId']);
  if (trackId != null) {
    rockResults.trackId = trackId;
  }
  final String? artistName = jsonConvert.convert<String>(json['artistName']);
  if (artistName != null) {
    rockResults.artistName = artistName;
  }
  final String? collectionName = jsonConvert.convert<String>(
      json['collectionName']);
  if (collectionName != null) {
    rockResults.collectionName = collectionName;
  }
  final String? trackName = jsonConvert.convert<String>(json['trackName']);
  if (trackName != null) {
    rockResults.trackName = trackName;
  }
  final String? collectionCensoredName = jsonConvert.convert<String>(
      json['collectionCensoredName']);
  if (collectionCensoredName != null) {
    rockResults.collectionCensoredName = collectionCensoredName;
  }
  final String? trackCensoredName = jsonConvert.convert<String>(
      json['trackCensoredName']);
  if (trackCensoredName != null) {
    rockResults.trackCensoredName = trackCensoredName;
  }
  final String? artistViewUrl = jsonConvert.convert<String>(
      json['artistViewUrl']);
  if (artistViewUrl != null) {
    rockResults.artistViewUrl = artistViewUrl;
  }
  final String? collectionViewUrl = jsonConvert.convert<String>(
      json['collectionViewUrl']);
  if (collectionViewUrl != null) {
    rockResults.collectionViewUrl = collectionViewUrl;
  }
  final String? trackViewUrl = jsonConvert.convert<String>(
      json['trackViewUrl']);
  if (trackViewUrl != null) {
    rockResults.trackViewUrl = trackViewUrl;
  }
  final String? previewUrl = jsonConvert.convert<String>(json['previewUrl']);
  if (previewUrl != null) {
    rockResults.previewUrl = previewUrl;
  }
  final String? artworkUrl30 = jsonConvert.convert<String>(
      json['artworkUrl30']);
  if (artworkUrl30 != null) {
    rockResults.artworkUrl30 = artworkUrl30;
  }
  final String? artworkUrl60 = jsonConvert.convert<String>(
      json['artworkUrl60']);
  if (artworkUrl60 != null) {
    rockResults.artworkUrl60 = artworkUrl60;
  }
  final String? artworkUrl100 = jsonConvert.convert<String>(
      json['artworkUrl100']);
  if (artworkUrl100 != null) {
    rockResults.artworkUrl100 = artworkUrl100;
  }
  final double? collectionPrice = jsonConvert.convert<double>(
      json['collectionPrice']);
  if (collectionPrice != null) {
    rockResults.collectionPrice = collectionPrice;
  }
  final double? trackPrice = jsonConvert.convert<double>(json['trackPrice']);
  if (trackPrice != null) {
    rockResults.trackPrice = trackPrice;
  }
  final String? releaseDate = jsonConvert.convert<String>(json['releaseDate']);
  if (releaseDate != null) {
    rockResults.releaseDate = releaseDate;
  }
  final String? collectionExplicitness = jsonConvert.convert<String>(
      json['collectionExplicitness']);
  if (collectionExplicitness != null) {
    rockResults.collectionExplicitness = collectionExplicitness;
  }
  final String? trackExplicitness = jsonConvert.convert<String>(
      json['trackExplicitness']);
  if (trackExplicitness != null) {
    rockResults.trackExplicitness = trackExplicitness;
  }
  final int? discCount = jsonConvert.convert<int>(json['discCount']);
  if (discCount != null) {
    rockResults.discCount = discCount;
  }
  final int? discNumber = jsonConvert.convert<int>(json['discNumber']);
  if (discNumber != null) {
    rockResults.discNumber = discNumber;
  }
  final int? trackCount = jsonConvert.convert<int>(json['trackCount']);
  if (trackCount != null) {
    rockResults.trackCount = trackCount;
  }
  final int? trackNumber = jsonConvert.convert<int>(json['trackNumber']);
  if (trackNumber != null) {
    rockResults.trackNumber = trackNumber;
  }
  final int? trackTimeMillis = jsonConvert.convert<int>(
      json['trackTimeMillis']);
  if (trackTimeMillis != null) {
    rockResults.trackTimeMillis = trackTimeMillis;
  }
  final String? country = jsonConvert.convert<String>(json['country']);
  if (country != null) {
    rockResults.country = country;
  }
  final String? currency = jsonConvert.convert<String>(json['currency']);
  if (currency != null) {
    rockResults.currency = currency;
  }
  final String? primaryGenreName = jsonConvert.convert<String>(
      json['primaryGenreName']);
  if (primaryGenreName != null) {
    rockResults.primaryGenreName = primaryGenreName;
  }
  final bool? isStreamable = jsonConvert.convert<bool>(json['isStreamable']);
  if (isStreamable != null) {
    rockResults.isStreamable = isStreamable;
  }
  final String? contentAdvisoryRating = jsonConvert.convert<String>(
      json['contentAdvisoryRating']);
  if (contentAdvisoryRating != null) {
    rockResults.contentAdvisoryRating = contentAdvisoryRating;
  }
  final String? collectionArtistName = jsonConvert.convert<String>(
      json['collectionArtistName']);
  if (collectionArtistName != null) {
    rockResults.collectionArtistName = collectionArtistName;
  }
  final int? collectionArtistId = jsonConvert.convert<int>(
      json['collectionArtistId']);
  if (collectionArtistId != null) {
    rockResults.collectionArtistId = collectionArtistId;
  }
  final String? collectionArtistViewUrl = jsonConvert.convert<String>(
      json['collectionArtistViewUrl']);
  if (collectionArtistViewUrl != null) {
    rockResults.collectionArtistViewUrl = collectionArtistViewUrl;
  }
  final double? trackRentalPrice = jsonConvert.convert<double>(
      json['trackRentalPrice']);
  if (trackRentalPrice != null) {
    rockResults.trackRentalPrice = trackRentalPrice;
  }
  final double? collectionHdPrice = jsonConvert.convert<double>(
      json['collectionHdPrice']);
  if (collectionHdPrice != null) {
    rockResults.collectionHdPrice = collectionHdPrice;
  }
  final double? trackHdPrice = jsonConvert.convert<double>(
      json['trackHdPrice']);
  if (trackHdPrice != null) {
    rockResults.trackHdPrice = trackHdPrice;
  }
  final double? trackHdRentalPrice = jsonConvert.convert<double>(
      json['trackHdRentalPrice']);
  if (trackHdRentalPrice != null) {
    rockResults.trackHdRentalPrice = trackHdRentalPrice;
  }
  final String? shortDescription = jsonConvert.convert<String>(
      json['shortDescription']);
  if (shortDescription != null) {
    rockResults.shortDescription = shortDescription;
  }
  final String? longDescription = jsonConvert.convert<String>(
      json['longDescription']);
  if (longDescription != null) {
    rockResults.longDescription = longDescription;
  }
  return rockResults;
}

Map<String, dynamic> $RockResultsToJson(RockResults entity) {
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
  data['collectionArtistName'] = entity.collectionArtistName;
  data['collectionArtistId'] = entity.collectionArtistId;
  data['collectionArtistViewUrl'] = entity.collectionArtistViewUrl;
  data['trackRentalPrice'] = entity.trackRentalPrice;
  data['collectionHdPrice'] = entity.collectionHdPrice;
  data['trackHdPrice'] = entity.trackHdPrice;
  data['trackHdRentalPrice'] = entity.trackHdRentalPrice;
  data['shortDescription'] = entity.shortDescription;
  data['longDescription'] = entity.longDescription;
  return data;
}

extension RockResultsExtension on RockResults {
  RockResults copyWith({
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
    String? collectionArtistName,
    int? collectionArtistId,
    String? collectionArtistViewUrl,
    double? trackRentalPrice,
    double? collectionHdPrice,
    double? trackHdPrice,
    double? trackHdRentalPrice,
    String? shortDescription,
    String? longDescription,
  }) {
    return RockResults()
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
      ..collectionArtistName = collectionArtistName ?? this.collectionArtistName
      ..collectionArtistId = collectionArtistId ?? this.collectionArtistId
      ..collectionArtistViewUrl = collectionArtistViewUrl ??
          this.collectionArtistViewUrl
      ..trackRentalPrice = trackRentalPrice ?? this.trackRentalPrice
      ..collectionHdPrice = collectionHdPrice ?? this.collectionHdPrice
      ..trackHdPrice = trackHdPrice ?? this.trackHdPrice
      ..trackHdRentalPrice = trackHdRentalPrice ?? this.trackHdRentalPrice
      ..shortDescription = shortDescription ?? this.shortDescription
      ..longDescription = longDescription ?? this.longDescription;
  }
}