import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'podcasts_record.g.dart';

abstract class PodcastsRecord
    implements Built<PodcastsRecord, PodcastsRecordBuilder> {
  static Serializer<PodcastsRecord> get serializer =>
      _$podcastsRecordSerializer;

  @BuiltValueField(wireName: 'podcast_header')
  String? get podcastHeader;

  @BuiltValueField(wireName: 'podcast_text')
  String? get podcastText;

  @BuiltValueField(wireName: 'upload_at')
  DateTime? get uploadAt;

  @BuiltValueField(wireName: 'podcast_cover')
  String? get podcastCover;

  @BuiltValueField(wireName: 'podast_audio_link')
  String? get podastAudioLink;

  @BuiltValueField(wireName: 'podcast_url')
  String? get podcastUrl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PodcastsRecordBuilder builder) => builder
    ..podcastHeader = ''
    ..podcastText = ''
    ..podcastCover = ''
    ..podastAudioLink = ''
    ..podcastUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('podcasts');

  static Stream<PodcastsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PodcastsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PodcastsRecord._();
  factory PodcastsRecord([void Function(PodcastsRecordBuilder) updates]) =
      _$PodcastsRecord;

  static PodcastsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPodcastsRecordData({
  String? podcastHeader,
  String? podcastText,
  DateTime? uploadAt,
  String? podcastCover,
  String? podastAudioLink,
  String? podcastUrl,
}) {
  final firestoreData = serializers.toFirestore(
    PodcastsRecord.serializer,
    PodcastsRecord(
      (p) => p
        ..podcastHeader = podcastHeader
        ..podcastText = podcastText
        ..uploadAt = uploadAt
        ..podcastCover = podcastCover
        ..podastAudioLink = podastAudioLink
        ..podcastUrl = podcastUrl,
    ),
  );

  return firestoreData;
}
