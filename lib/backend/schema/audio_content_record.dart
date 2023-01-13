import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'audio_content_record.g.dart';

abstract class AudioContentRecord
    implements Built<AudioContentRecord, AudioContentRecordBuilder> {
  static Serializer<AudioContentRecord> get serializer =>
      _$audioContentRecordSerializer;

  DocumentReference? get mindfulness;

  @BuiltValueField(wireName: 'card_header')
  String? get cardHeader;

  @BuiltValueField(wireName: 'card_description')
  String? get cardDescription;

  String? get audio;

  @BuiltValueField(wireName: 'audio_header')
  String? get audioHeader;

  @BuiltValueField(wireName: 'audio_description')
  String? get audioDescription;

  @BuiltValueField(wireName: 'audio_url')
  String? get audioUrl;

  @BuiltValueField(wireName: 'record_created_at')
  DateTime? get recordCreatedAt;

  @BuiltValueField(wireName: 'audio_link')
  String? get audioLink;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AudioContentRecordBuilder builder) => builder
    ..cardHeader = ''
    ..cardDescription = ''
    ..audio = ''
    ..audioHeader = ''
    ..audioDescription = ''
    ..audioUrl = ''
    ..audioLink = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('audio_content');

  static Stream<AudioContentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AudioContentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AudioContentRecord._();
  factory AudioContentRecord(
          [void Function(AudioContentRecordBuilder) updates]) =
      _$AudioContentRecord;

  static AudioContentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAudioContentRecordData({
  DocumentReference? mindfulness,
  String? cardHeader,
  String? cardDescription,
  String? audio,
  String? audioHeader,
  String? audioDescription,
  String? audioUrl,
  DateTime? recordCreatedAt,
  String? audioLink,
}) {
  final firestoreData = serializers.toFirestore(
    AudioContentRecord.serializer,
    AudioContentRecord(
      (a) => a
        ..mindfulness = mindfulness
        ..cardHeader = cardHeader
        ..cardDescription = cardDescription
        ..audio = audio
        ..audioHeader = audioHeader
        ..audioDescription = audioDescription
        ..audioUrl = audioUrl
        ..recordCreatedAt = recordCreatedAt
        ..audioLink = audioLink,
    ),
  );

  return firestoreData;
}
