// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'affirmation_content_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AffirmationContentRecord> _$affirmationContentRecordSerializer =
    new _$AffirmationContentRecordSerializer();

class _$AffirmationContentRecordSerializer
    implements StructuredSerializer<AffirmationContentRecord> {
  @override
  final Iterable<Type> types = const [
    AffirmationContentRecord,
    _$AffirmationContentRecord
  ];
  @override
  final String wireName = 'AffirmationContentRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AffirmationContentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.mindfulness;
    if (value != null) {
      result
        ..add('mindfulness')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.cardHeader;
    if (value != null) {
      result
        ..add('card_header')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cardDescription;
    if (value != null) {
      result
        ..add('card_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.affirmationText;
    if (value != null) {
      result
        ..add('affirmation_text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.recordCreatedAt;
    if (value != null) {
      result
        ..add('record_created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.show;
    if (value != null) {
      result
        ..add('show')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  AffirmationContentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AffirmationContentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mindfulness':
          result.mindfulness = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'card_header':
          result.cardHeader = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'card_description':
          result.cardDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'affirmation_text':
          result.affirmationText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'record_created_at':
          result.recordCreatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'show':
          result.show = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$AffirmationContentRecord extends AffirmationContentRecord {
  @override
  final DocumentReference<Object?>? mindfulness;
  @override
  final String? cardHeader;
  @override
  final String? cardDescription;
  @override
  final String? image;
  @override
  final String? affirmationText;
  @override
  final DateTime? recordCreatedAt;
  @override
  final bool? show;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AffirmationContentRecord(
          [void Function(AffirmationContentRecordBuilder)? updates]) =>
      (new AffirmationContentRecordBuilder()..update(updates))._build();

  _$AffirmationContentRecord._(
      {this.mindfulness,
      this.cardHeader,
      this.cardDescription,
      this.image,
      this.affirmationText,
      this.recordCreatedAt,
      this.show,
      this.ffRef})
      : super._();

  @override
  AffirmationContentRecord rebuild(
          void Function(AffirmationContentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AffirmationContentRecordBuilder toBuilder() =>
      new AffirmationContentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AffirmationContentRecord &&
        mindfulness == other.mindfulness &&
        cardHeader == other.cardHeader &&
        cardDescription == other.cardDescription &&
        image == other.image &&
        affirmationText == other.affirmationText &&
        recordCreatedAt == other.recordCreatedAt &&
        show == other.show &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, mindfulness.hashCode),
                                cardHeader.hashCode),
                            cardDescription.hashCode),
                        image.hashCode),
                    affirmationText.hashCode),
                recordCreatedAt.hashCode),
            show.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AffirmationContentRecord')
          ..add('mindfulness', mindfulness)
          ..add('cardHeader', cardHeader)
          ..add('cardDescription', cardDescription)
          ..add('image', image)
          ..add('affirmationText', affirmationText)
          ..add('recordCreatedAt', recordCreatedAt)
          ..add('show', show)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AffirmationContentRecordBuilder
    implements
        Builder<AffirmationContentRecord, AffirmationContentRecordBuilder> {
  _$AffirmationContentRecord? _$v;

  DocumentReference<Object?>? _mindfulness;
  DocumentReference<Object?>? get mindfulness => _$this._mindfulness;
  set mindfulness(DocumentReference<Object?>? mindfulness) =>
      _$this._mindfulness = mindfulness;

  String? _cardHeader;
  String? get cardHeader => _$this._cardHeader;
  set cardHeader(String? cardHeader) => _$this._cardHeader = cardHeader;

  String? _cardDescription;
  String? get cardDescription => _$this._cardDescription;
  set cardDescription(String? cardDescription) =>
      _$this._cardDescription = cardDescription;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _affirmationText;
  String? get affirmationText => _$this._affirmationText;
  set affirmationText(String? affirmationText) =>
      _$this._affirmationText = affirmationText;

  DateTime? _recordCreatedAt;
  DateTime? get recordCreatedAt => _$this._recordCreatedAt;
  set recordCreatedAt(DateTime? recordCreatedAt) =>
      _$this._recordCreatedAt = recordCreatedAt;

  bool? _show;
  bool? get show => _$this._show;
  set show(bool? show) => _$this._show = show;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AffirmationContentRecordBuilder() {
    AffirmationContentRecord._initializeBuilder(this);
  }

  AffirmationContentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mindfulness = $v.mindfulness;
      _cardHeader = $v.cardHeader;
      _cardDescription = $v.cardDescription;
      _image = $v.image;
      _affirmationText = $v.affirmationText;
      _recordCreatedAt = $v.recordCreatedAt;
      _show = $v.show;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AffirmationContentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AffirmationContentRecord;
  }

  @override
  void update(void Function(AffirmationContentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AffirmationContentRecord build() => _build();

  _$AffirmationContentRecord _build() {
    final _$result = _$v ??
        new _$AffirmationContentRecord._(
            mindfulness: mindfulness,
            cardHeader: cardHeader,
            cardDescription: cardDescription,
            image: image,
            affirmationText: affirmationText,
            recordCreatedAt: recordCreatedAt,
            show: show,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
