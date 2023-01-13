import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'monthly_mindfulness_record.g.dart';

abstract class MonthlyMindfulnessRecord
    implements
        Built<MonthlyMindfulnessRecord, MonthlyMindfulnessRecordBuilder> {
  static Serializer<MonthlyMindfulnessRecord> get serializer =>
      _$monthlyMindfulnessRecordSerializer;

  @BuiltValueField(wireName: 'upload_at')
  DateTime? get uploadAt;

  @BuiltValueField(wireName: 'mindfulness_description')
  String? get mindfulnessDescription;

  @BuiltValueField(wireName: 'subscription_plan')
  String? get subscriptionPlan;

  bool? get show;

  @BuiltValueField(wireName: 'record_created_at')
  DateTime? get recordCreatedAt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MonthlyMindfulnessRecordBuilder builder) =>
      builder
        ..mindfulnessDescription = ''
        ..subscriptionPlan = ''
        ..show = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Monthly_mindfulness');

  static Stream<MonthlyMindfulnessRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MonthlyMindfulnessRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MonthlyMindfulnessRecord._();
  factory MonthlyMindfulnessRecord(
          [void Function(MonthlyMindfulnessRecordBuilder) updates]) =
      _$MonthlyMindfulnessRecord;

  static MonthlyMindfulnessRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMonthlyMindfulnessRecordData({
  DateTime? uploadAt,
  String? mindfulnessDescription,
  String? subscriptionPlan,
  bool? show,
  DateTime? recordCreatedAt,
}) {
  final firestoreData = serializers.toFirestore(
    MonthlyMindfulnessRecord.serializer,
    MonthlyMindfulnessRecord(
      (m) => m
        ..uploadAt = uploadAt
        ..mindfulnessDescription = mindfulnessDescription
        ..subscriptionPlan = subscriptionPlan
        ..show = show
        ..recordCreatedAt = recordCreatedAt,
    ),
  );

  return firestoreData;
}
