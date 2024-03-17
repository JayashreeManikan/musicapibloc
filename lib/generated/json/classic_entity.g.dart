import 'package:musicapibloc/generated/json/base/json_convert_content.dart';
import 'package:musicapibloc/Data/model/classic_entity.dart';

ClassicEntity $ClassicEntityFromJson(Map<String, dynamic> json) {
  final ClassicEntity classicEntity = ClassicEntity();
  final int? resultCount = jsonConvert.convert<int>(json['resultCount']);
  if (resultCount != null) {
    classicEntity.resultCount = resultCount;
  }
  final List<ClassicResults>? results = (json['results'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<ClassicResults>(e) as ClassicResults)
      .toList();
  if (results != null) {
    classicEntity.results = results;
  }
  return classicEntity;
}

Map<String, dynamic> $ClassicEntityToJson(ClassicEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['resultCount'] = entity.resultCount;
  data['results'] = entity.results.map((v) => v.toJson()).toList();
  return data;
}

extension ClassicEntityExtension on ClassicEntity {
  ClassicEntity copyWith({
    int? resultCount,
    List<ClassicResults>? results,
  }) {
    return ClassicEntity()
      ..resultCount = resultCount ?? this.resultCount
      ..results = results ?? this.results;
  }
}

ClassicResults $ClassicResultsFromJson(Map<String, dynamic> json) {
  final ClassicResults classicResults = ClassicResults();
  final String? wrapperType = jsonConvert.convert<String>(json['wrapperType']);
  if (wrapperType != null) {
    classicResults.wrapperType = wrapperType;
  }
  final String? kind = jsonConvert.convert<String>(json['kind']);
  if (kind != null) {
    classicResults.kind = kind;
  }
  final int? artistId = jsonConvert.convert<int>(json['artistId']);
  if (artistId != null) {
    classicResults.artistId = artistId;
  }
  final int? collectionId = jsonConvert.convert<int>(json['collectionId']);
  if (collectionId != null) {
    classicResults.collectionId = collectionId;
  }
  final int? trackId = jsonConvert.convert<int>(json['trackId']);
  if (trackId != null) {
    classicResults.trackId = trackId;
  }
  final String? artistName = jsonConvert.convert<String>(json['artistName']);
  if (artistName != null) {
    classicResults.artistName = artistName;
  }
  final String? collectionName = jsonConvert.convert<String>(
      json['collectionName']);
  if (collectionName != null) {
    classicResults.collectionName = collectionName;
  }
  final String? trackName = jsonConvert.convert<String>(json['trackName']);
  if (trackName != null) {
    classicResults.trackName = trackName;
  }
  final String? collectionCensoredName = jsonConvert.convert<String>(
      json['collectionCensoredName']);
  if (collectionCensoredName != null) {
    classicResults.collectionCensoredName = collectionCensoredName;
  }
  final String? trackCensoredName = jsonConvert.convert<String>(
      json['trackCensoredName']);
  if (trackCensoredName != null) {
    classicResults.trackCensoredName = trackCensoredName;
  }
  final String? artistViewUrl = jsonConvert.convert<String>(
      json['artistViewUrl']);
  if (artistViewUrl != null) {
    classicResults.artistViewUrl = artistViewUrl;
  }
  final String? collectionViewUrl = jsonConvert.convert<String>(
      json['collectionViewUrl']);
  if (collectionViewUrl != null) {
    classicResults.collectionViewUrl = collectionViewUrl;
  }
  final String? trackViewUrl = jsonConvert.convert<String>(
      json['trackViewUrl']);
  if (trackViewUrl != null) {
    classicResults.trackViewUrl = trackViewUrl;
  }
  final String? previewUrl = jsonConvert.convert<String>(json['previewUrl']);
  if (previewUrl != null) {
    classicResults.previewUrl = previewUrl;
  }
  final String? artworkUrl30 = jsonConvert.convert<String>(
      json['artworkUrl30']);
  if (artworkUrl30 != null) {
    classicResults.artworkUrl30 = artworkUrl30;
  }
  final String? artworkUrl60 = jsonConvert.convert<String>(
      json['artworkUrl60']);
  if (artworkUrl60 != null) {
    classicResults.artworkUrl60 = artworkUrl60;
  }
  final String? artworkUrl100 = jsonConvert.convert<String>(
      json['artworkUrl100']);
  if (artworkUrl100 != null) {
    classicResults.artworkUrl100 = artworkUrl100;
  }
  final double? collectionPrice = jsonConvert.convert<double>(
      json['collectionPrice']);
  if (collectionPrice != null) {
    classicResults.collectionPrice = collectionPrice;
  }
  final double? trackPrice = jsonConvert.convert<double>(json['trackPrice']);
  if (trackPrice != null) {
    classicResults.trackPrice = trackPrice;
  }
  final String? releaseDate = jsonConvert.convert<String>(json['releaseDate']);
  if (releaseDate != null) {
    classicResults.releaseDate = releaseDate;
  }
  final String? collectionExplicitness = jsonConvert.convert<String>(
      json['collectionExplicitness']);
  if (collectionExplicitness != null) {
    classicResults.collectionExplicitness = collectionExplicitness;
  }
  final String? trackExplicitness = jsonConvert.convert<String>(
      json['trackExplicitness']);
  if (trackExplicitness != null) {
    classicResults.trackExplicitness = trackExplicitness;
  }
  final int? discCount = jsonConvert.convert<int>(json['discCount']);
  if (discCount != null) {
    classicResults.discCount = discCount;
  }
  final int? discNumber = jsonConvert.convert<int>(json['discNumber']);
  if (discNumber != null) {
    classicResults.discNumber = discNumber;
  }
  final int? trackCount = jsonConvert.convert<int>(json['trackCount']);
  if (trackCount != null) {
    classicResults.trackCount = trackCount;
  }
  final int? trackNumber = jsonConvert.convert<int>(json['trackNumber']);
  if (trackNumber != null) {
    classicResults.trackNumber = trackNumber;
  }
  final int? trackTimeMillis = jsonConvert.convert<int>(
      json['trackTimeMillis']);
  if (trackTimeMillis != null) {
    classicResults.trackTimeMillis = trackTimeMillis;
  }
  final String? country = jsonConvert.convert<String>(json['country']);
  if (country != null) {
    classicResults.country = country;
  }
  final String? currency = jsonConvert.convert<String>(json['currency']);
  if (currency != null) {
    classicResults.currency = currency;
  }
  final String? primaryGenreName = jsonConvert.convert<String>(
      json['primaryGenreName']);
  if (primaryGenreName != null) {
    classicResults.primaryGenreName = primaryGenreName;
  }
  final bool? isStreamable = jsonConvert.convert<bool>(json['isStreamable']);
  if (isStreamable != null) {
    classicResults.isStreamable = isStreamable;
  }
  final int? collectionArtistId = jsonConvert.convert<int>(
      json['collectionArtistId']);
  if (collectionArtistId != null) {
    classicResults.collectionArtistId = collectionArtistId;
  }
  final String? collectionArtistName = jsonConvert.convert<String>(
      json['collectionArtistName']);
  if (collectionArtistName != null) {
    classicResults.collectionArtistName = collectionArtistName;
  }
  final String? collectionArtistViewUrl = jsonConvert.convert<String>(
      json['collectionArtistViewUrl']);
  if (collectionArtistViewUrl != null) {
    classicResults.collectionArtistViewUrl = collectionArtistViewUrl;
  }
  final double? trackRentalPrice = jsonConvert.convert<double>(
      json['trackRentalPrice']);
  if (trackRentalPrice != null) {
    classicResults.trackRentalPrice = trackRentalPrice;
  }
  final double? collectionHdPrice = jsonConvert.convert<double>(
      json['collectionHdPrice']);
  if (collectionHdPrice != null) {
    classicResults.collectionHdPrice = collectionHdPrice;
  }
  final double? trackHdPrice = jsonConvert.convert<double>(
      json['trackHdPrice']);
  if (trackHdPrice != null) {
    classicResults.trackHdPrice = trackHdPrice;
  }
  final double? trackHdRentalPrice = jsonConvert.convert<double>(
      json['trackHdRentalPrice']);
  if (trackHdRentalPrice != null) {
    classicResults.trackHdRentalPrice = trackHdRentalPrice;
  }
  final String? contentAdvisoryRating = jsonConvert.convert<String>(
      json['contentAdvisoryRating']);
  if (contentAdvisoryRating != null) {
    classicResults.contentAdvisoryRating = contentAdvisoryRating;
  }
  final String? longDescription = jsonConvert.convert<String>(
      json['longDescription']);
  if (longDescription != null) {
    classicResults.longDescription = longDescription;
  }
  final bool? hasITunesExtras = jsonConvert.convert<bool>(
      json['hasITunesExtras']);
  if (hasITunesExtras != null) {
    classicResults.hasITunesExtras = hasITunesExtras;
  }
  final String? shortDescription = jsonConvert.convert<String>(
      json['shortDescription']);
  if (shortDescription != null) {
    classicResults.shortDescription = shortDescription;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    classicResults.description = description;
  }
  return classicResults;
}

Map<String, dynamic> $ClassicResultsToJson(ClassicResults entity) {
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
  data['collectionArtistId'] = entity.collectionArtistId;
  data['collectionArtistName'] = entity.collectionArtistName;
  data['collectionArtistViewUrl'] = entity.collectionArtistViewUrl;
  data['trackRentalPrice'] = entity.trackRentalPrice;
  data['collectionHdPrice'] = entity.collectionHdPrice;
  data['trackHdPrice'] = entity.trackHdPrice;
  data['trackHdRentalPrice'] = entity.trackHdRentalPrice;
  data['contentAdvisoryRating'] = entity.contentAdvisoryRating;
  data['longDescription'] = entity.longDescription;
  data['hasITunesExtras'] = entity.hasITunesExtras;
  data['shortDescription'] = entity.shortDescription;
  data['description'] = entity.description;
  return data;
}

extension ClassicResultsExtension on ClassicResults {
  ClassicResults copyWith({
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
    int? collectionArtistId,
    String? collectionArtistName,
    String? collectionArtistViewUrl,
    double? trackRentalPrice,
    double? collectionHdPrice,
    double? trackHdPrice,
    double? trackHdRentalPrice,
    String? contentAdvisoryRating,
    String? longDescription,
    bool? hasITunesExtras,
    String? shortDescription,
    String? description,
  }) {
    return ClassicResults()
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
      ..collectionArtistId = collectionArtistId ?? this.collectionArtistId
      ..collectionArtistName = collectionArtistName ?? this.collectionArtistName
      ..collectionArtistViewUrl = collectionArtistViewUrl ??
          this.collectionArtistViewUrl
      ..trackRentalPrice = trackRentalPrice ?? this.trackRentalPrice
      ..collectionHdPrice = collectionHdPrice ?? this.collectionHdPrice
      ..trackHdPrice = trackHdPrice ?? this.trackHdPrice
      ..trackHdRentalPrice = trackHdRentalPrice ?? this.trackHdRentalPrice
      ..contentAdvisoryRating = contentAdvisoryRating ??
          this.contentAdvisoryRating
      ..longDescription = longDescription ?? this.longDescription
      ..hasITunesExtras = hasITunesExtras ?? this.hasITunesExtras
      ..shortDescription = shortDescription ?? this.shortDescription
      ..description = description ?? this.description;
  }
}