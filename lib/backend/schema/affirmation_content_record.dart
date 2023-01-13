import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'affirmation_content_record.g.dart';

abstract class AffirmationContentRecord
    implements
        Built<AffirmationContentRecord, AffirmationContentRecordBuilder> {
  static Serializer<AffirmationContentRecord> get serializer =>
      _$affirmationContentRecordSerializer;

  DocumentReference? get mindfulness;

  @BuiltValueField(wireName: 'card_header')
  String? get cardHeader;

  @BuiltValueField(wireName: 'card_description')
  String? get cardDescription;

  String? get image;

  @BuiltValueField(wireName: 'affirmation_text')
  String? get affirmationText;

  @BuiltValueField(wireName: 'record_created_at')
  DateTime? get recordCreatedAt;

  bool? get show;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AffirmationContentRecordBuilder builder) =>
      builder
        ..cardHeader = ''
        ..cardDescription = ''
        ..image = ''
        ..affirmationText = ''
        ..show = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('affirmation_content');

  static Stream<AffirmationContentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AffirmationContentRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AffirmationContentRecord._();
  factory AffirmationContentRecord(
          [void Function(AffirmationContentRecordBuilder) updates]) =
      _$AffirmationContentRecord;

  static AffirmationContentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAffirmationContentRecordData({
  DocumentReference? mindfulness,
  String? cardHeader,
  String? cardDescription,
  String? image,
  String? affirmationText,
  DateTime? recordCreatedAt,
  bool? show,
}) {
  final firestoreData = serializers.toFirestore(
    AffirmationContentRecord.serializer,
    AffirmationContentRecord(
      (a) => a
        ..mindfulness = mindfulness
        ..cardHeader = cardHeader
        ..cardDescription = cardDescription
        ..image = image
        ..affirmationText = affirmationText
        ..recordCreatedAt = recordCreatedAt
        ..show = show,
    ),
  );

  return firestoreData;
}
