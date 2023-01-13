import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mindfull_moments_record.g.dart';

abstract class MindfullMomentsRecord
    implements Built<MindfullMomentsRecord, MindfullMomentsRecordBuilder> {
  static Serializer<MindfullMomentsRecord> get serializer =>
      _$mindfullMomentsRecordSerializer;

  DocumentReference? get mindfulness;

  @BuiltValueField(wireName: 'card_header')
  String? get cardHeader;

  @BuiltValueField(wireName: 'card_description')
  String? get cardDescription;

  String? get image;

  @BuiltValueField(wireName: 'moments_text')
  String? get momentsText;

  @BuiltValueField(wireName: 'record_created_at')
  DateTime? get recordCreatedAt;

  bool? get show;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MindfullMomentsRecordBuilder builder) =>
      builder
        ..cardHeader = ''
        ..cardDescription = ''
        ..image = ''
        ..momentsText = ''
        ..show = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mindfull_moments');

  static Stream<MindfullMomentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MindfullMomentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MindfullMomentsRecord._();
  factory MindfullMomentsRecord(
          [void Function(MindfullMomentsRecordBuilder) updates]) =
      _$MindfullMomentsRecord;

  static MindfullMomentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMindfullMomentsRecordData({
  DocumentReference? mindfulness,
  String? cardHeader,
  String? cardDescription,
  String? image,
  String? momentsText,
  DateTime? recordCreatedAt,
  bool? show,
}) {
  final firestoreData = serializers.toFirestore(
    MindfullMomentsRecord.serializer,
    MindfullMomentsRecord(
      (m) => m
        ..mindfulness = mindfulness
        ..cardHeader = cardHeader
        ..cardDescription = cardDescription
        ..image = image
        ..momentsText = momentsText
        ..recordCreatedAt = recordCreatedAt
        ..show = show,
    ),
  );

  return firestoreData;
}
