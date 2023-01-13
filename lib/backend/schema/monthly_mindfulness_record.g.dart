// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_mindfulness_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MonthlyMindfulnessRecord> _$monthlyMindfulnessRecordSerializer =
    new _$MonthlyMindfulnessRecordSerializer();

class _$MonthlyMindfulnessRecordSerializer
    implements StructuredSerializer<MonthlyMindfulnessRecord> {
  @override
  final Iterable<Type> types = const [
    MonthlyMindfulnessRecord,
    _$MonthlyMindfulnessRecord
  ];
  @override
  final String wireName = 'MonthlyMindfulnessRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, MonthlyMindfulnessRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uploadAt;
    if (value != null) {
      result
        ..add('upload_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.mindfulnessDescription;
    if (value != null) {
      result
        ..add('mindfulness_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subscriptionPlan;
    if (value != null) {
      result
        ..add('subscription_plan')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.show;
    if (value != null) {
      result
        ..add('show')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.recordCreatedAt;
    if (value != null) {
      result
        ..add('record_created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  MonthlyMindfulnessRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MonthlyMindfulnessRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'upload_at':
          result.uploadAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'mindfulness_description':
          result.mindfulnessDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'subscription_plan':
          result.subscriptionPlan = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'show':
          result.show = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'record_created_at':
          result.recordCreatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$MonthlyMindfulnessRecord extends MonthlyMindfulnessRecord {
  @override
  final DateTime? uploadAt;
  @override
  final String? mindfulnessDescription;
  @override
  final String? subscriptionPlan;
  @override
  final bool? show;
  @override
  final DateTime? recordCreatedAt;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MonthlyMindfulnessRecord(
          [void Function(MonthlyMindfulnessRecordBuilder)? updates]) =>
      (new MonthlyMindfulnessRecordBuilder()..update(updates))._build();

  _$MonthlyMindfulnessRecord._(
      {this.uploadAt,
      this.mindfulnessDescription,
      this.subscriptionPlan,
      this.show,
      this.recordCreatedAt,
      this.ffRef})
      : super._();

  @override
  MonthlyMindfulnessRecord rebuild(
          void Function(MonthlyMindfulnessRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MonthlyMindfulnessRecordBuilder toBuilder() =>
      new MonthlyMindfulnessRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MonthlyMindfulnessRecord &&
        uploadAt == other.uploadAt &&
        mindfulnessDescription == other.mindfulnessDescription &&
        subscriptionPlan == other.subscriptionPlan &&
        show == other.show &&
        recordCreatedAt == other.recordCreatedAt &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, uploadAt.hashCode),
                        mindfulnessDescription.hashCode),
                    subscriptionPlan.hashCode),
                show.hashCode),
            recordCreatedAt.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MonthlyMindfulnessRecord')
          ..add('uploadAt', uploadAt)
          ..add('mindfulnessDescription', mindfulnessDescription)
          ..add('subscriptionPlan', subscriptionPlan)
          ..add('show', show)
          ..add('recordCreatedAt', recordCreatedAt)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MonthlyMindfulnessRecordBuilder
    implements
        Builder<MonthlyMindfulnessRecord, MonthlyMindfulnessRecordBuilder> {
  _$MonthlyMindfulnessRecord? _$v;

  DateTime? _uploadAt;
  DateTime? get uploadAt => _$this._uploadAt;
  set uploadAt(DateTime? uploadAt) => _$this._uploadAt = uploadAt;

  String? _mindfulnessDescription;
  String? get mindfulnessDescription => _$this._mindfulnessDescription;
  set mindfulnessDescription(String? mindfulnessDescription) =>
      _$this._mindfulnessDescription = mindfulnessDescription;

  String? _subscriptionPlan;
  String? get subscriptionPlan => _$this._subscriptionPlan;
  set subscriptionPlan(String? subscriptionPlan) =>
      _$this._subscriptionPlan = subscriptionPlan;

  bool? _show;
  bool? get show => _$this._show;
  set show(bool? show) => _$this._show = show;

  DateTime? _recordCreatedAt;
  DateTime? get recordCreatedAt => _$this._recordCreatedAt;
  set recordCreatedAt(DateTime? recordCreatedAt) =>
      _$this._recordCreatedAt = recordCreatedAt;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MonthlyMindfulnessRecordBuilder() {
    MonthlyMindfulnessRecord._initializeBuilder(this);
  }

  MonthlyMindfulnessRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uploadAt = $v.uploadAt;
      _mindfulnessDescription = $v.mindfulnessDescription;
      _subscriptionPlan = $v.subscriptionPlan;
      _show = $v.show;
      _recordCreatedAt = $v.recordCreatedAt;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MonthlyMindfulnessRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MonthlyMindfulnessRecord;
  }

  @override
  void update(void Function(MonthlyMindfulnessRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MonthlyMindfulnessRecord build() => _build();

  _$MonthlyMindfulnessRecord _build() {
    final _$result = _$v ??
        new _$MonthlyMindfulnessRecord._(
            uploadAt: uploadAt,
            mindfulnessDescription: mindfulnessDescription,
            subscriptionPlan: subscriptionPlan,
            show: show,
            recordCreatedAt: recordCreatedAt,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
