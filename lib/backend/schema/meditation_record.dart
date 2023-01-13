import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'meditation_record.g.dart';

abstract class MeditationRecord
    implements Built<MeditationRecord, MeditationRecordBuilder> {
  static Serializer<MeditationRecord> get serializer =>
      _$meditationRecordSerializer;

  @BuiltValueField(wireName: 'meditation_video')
  String? get meditationVideo;

  @BuiltValueField(wireName: 'meditation_header')
  String? get meditationHeader;

  @BuiltValueField(wireName: 'meditation_text')
  String? get meditationText;

  @BuiltValueField(wireName: 'completed_by')
  BuiltList<DocumentReference>? get completedBy;

  @BuiltValueField(wireName: 'is_free')
  bool? get isFree;

  @BuiltValueField(wireName: 'meditation_url')
  String? get meditationUrl;

  @BuiltValueField(wireName: 'upload_at')
  DateTime? get uploadAt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MeditationRecordBuilder builder) => builder
    ..meditationVideo = ''
    ..meditationHeader = ''
    ..meditationText = ''
    ..completedBy = ListBuilder()
    ..isFree = false
    ..meditationUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('meditation');

  static Stream<MeditationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MeditationRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MeditationRecord._();
  factory MeditationRecord([void Function(MeditationRecordBuilder) updates]) =
      _$MeditationRecord;

  static MeditationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMeditationRecordData({
  String? meditationVideo,
  String? meditationHeader,
  String? meditationText,
  bool? isFree,
  String? meditationUrl,
  DateTime? uploadAt,
}) {
  final firestoreData = serializers.toFirestore(
    MeditationRecord.serializer,
    MeditationRecord(
      (m) => m
        ..meditationVideo = meditationVideo
        ..meditationHeader = meditationHeader
        ..meditationText = meditationText
        ..completedBy = null
        ..isFree = isFree
        ..meditationUrl = meditationUrl
        ..uploadAt = uploadAt,
    ),
  );

  return firestoreData;
}
