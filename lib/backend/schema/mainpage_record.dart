import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mainpage_record.g.dart';

abstract class MainpageRecord
    implements Built<MainpageRecord, MainpageRecordBuilder> {
  static Serializer<MainpageRecord> get serializer =>
      _$mainpageRecordSerializer;

  @BuiltValueField(wireName: 'main_video')
  String? get mainVideo;

  @BuiltValueField(wireName: 'main_header')
  String? get mainHeader;

  @BuiltValueField(wireName: 'main_text')
  String? get mainText;

  @BuiltValueField(wireName: 'main_video_url')
  String? get mainVideoUrl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MainpageRecordBuilder builder) => builder
    ..mainVideo = ''
    ..mainHeader = ''
    ..mainText = ''
    ..mainVideoUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mainpage');

  static Stream<MainpageRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MainpageRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MainpageRecord._();
  factory MainpageRecord([void Function(MainpageRecordBuilder) updates]) =
      _$MainpageRecord;

  static MainpageRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMainpageRecordData({
  String? mainVideo,
  String? mainHeader,
  String? mainText,
  String? mainVideoUrl,
}) {
  final firestoreData = serializers.toFirestore(
    MainpageRecord.serializer,
    MainpageRecord(
      (m) => m
        ..mainVideo = mainVideo
        ..mainHeader = mainHeader
        ..mainText = mainText
        ..mainVideoUrl = mainVideoUrl,
    ),
  );

  return firestoreData;
}
