import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'video_content_record.g.dart';

abstract class VideoContentRecord
    implements Built<VideoContentRecord, VideoContentRecordBuilder> {
  static Serializer<VideoContentRecord> get serializer =>
      _$videoContentRecordSerializer;

  DocumentReference? get mindfulness;

  @BuiltValueField(wireName: 'card_header')
  String? get cardHeader;

  @BuiltValueField(wireName: 'card_description')
  String? get cardDescription;

  String? get video;

  @BuiltValueField(wireName: 'video_header')
  String? get videoHeader;

  @BuiltValueField(wireName: 'video_description')
  String? get videoDescription;

  @BuiltValueField(wireName: 'video_url')
  String? get videoUrl;

  @BuiltValueField(wireName: 'record_created_at')
  DateTime? get recordCreatedAt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VideoContentRecordBuilder builder) => builder
    ..cardHeader = ''
    ..cardDescription = ''
    ..video = ''
    ..videoHeader = ''
    ..videoDescription = ''
    ..videoUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('video_content');

  static Stream<VideoContentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VideoContentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VideoContentRecord._();
  factory VideoContentRecord(
          [void Function(VideoContentRecordBuilder) updates]) =
      _$VideoContentRecord;

  static VideoContentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVideoContentRecordData({
  DocumentReference? mindfulness,
  String? cardHeader,
  String? cardDescription,
  String? video,
  String? videoHeader,
  String? videoDescription,
  String? videoUrl,
  DateTime? recordCreatedAt,
}) {
  final firestoreData = serializers.toFirestore(
    VideoContentRecord.serializer,
    VideoContentRecord(
      (v) => v
        ..mindfulness = mindfulness
        ..cardHeader = cardHeader
        ..cardDescription = cardDescription
        ..video = video
        ..videoHeader = videoHeader
        ..videoDescription = videoDescription
        ..videoUrl = videoUrl
        ..recordCreatedAt = recordCreatedAt,
    ),
  );

  return firestoreData;
}
