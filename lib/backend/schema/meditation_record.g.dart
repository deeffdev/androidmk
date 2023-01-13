// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditation_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MeditationRecord> _$meditationRecordSerializer =
    new _$MeditationRecordSerializer();

class _$MeditationRecordSerializer
    implements StructuredSerializer<MeditationRecord> {
  @override
  final Iterable<Type> types = const [MeditationRecord, _$MeditationRecord];
  @override
  final String wireName = 'MeditationRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MeditationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.meditationVideo;
    if (value != null) {
      result
        ..add('meditation_video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.meditationHeader;
    if (value != null) {
      result
        ..add('meditation_header')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.meditationText;
    if (value != null) {
      result
        ..add('meditation_text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.completedBy;
    if (value != null) {
      result
        ..add('completed_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.isFree;
    if (value != null) {
      result
        ..add('is_free')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.meditationUrl;
    if (value != null) {
      result
        ..add('meditation_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uploadAt;
    if (value != null) {
      result
        ..add('upload_at')
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
  MeditationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MeditationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'meditation_video':
          result.meditationVideo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'meditation_header':
          result.meditationHeader = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'meditation_text':
          result.meditationText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'completed_by':
          result.completedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'is_free':
          result.isFree = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'meditation_url':
          result.meditationUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'upload_at':
          result.uploadAt = serializers.deserialize(value,
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

class _$MeditationRecord extends MeditationRecord {
  @override
  final String? meditationVideo;
  @override
  final String? meditationHeader;
  @override
  final String? meditationText;
  @override
  final BuiltList<DocumentReference<Object?>>? completedBy;
  @override
  final bool? isFree;
  @override
  final String? meditationUrl;
  @override
  final DateTime? uploadAt;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MeditationRecord(
          [void Function(MeditationRecordBuilder)? updates]) =>
      (new MeditationRecordBuilder()..update(updates))._build();

  _$MeditationRecord._(
      {this.meditationVideo,
      this.meditationHeader,
      this.meditationText,
      this.completedBy,
      this.isFree,
      this.meditationUrl,
      this.uploadAt,
      this.ffRef})
      : super._();

  @override
  MeditationRecord rebuild(void Function(MeditationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeditationRecordBuilder toBuilder() =>
      new MeditationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeditationRecord &&
        meditationVideo == other.meditationVideo &&
        meditationHeader == other.meditationHeader &&
        meditationText == other.meditationText &&
        completedBy == other.completedBy &&
        isFree == other.isFree &&
        meditationUrl == other.meditationUrl &&
        uploadAt == other.uploadAt &&
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
                            $jc($jc(0, meditationVideo.hashCode),
                                meditationHeader.hashCode),
                            meditationText.hashCode),
                        completedBy.hashCode),
                    isFree.hashCode),
                meditationUrl.hashCode),
            uploadAt.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MeditationRecord')
          ..add('meditationVideo', meditationVideo)
          ..add('meditationHeader', meditationHeader)
          ..add('meditationText', meditationText)
          ..add('completedBy', completedBy)
          ..add('isFree', isFree)
          ..add('meditationUrl', meditationUrl)
          ..add('uploadAt', uploadAt)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MeditationRecordBuilder
    implements Builder<MeditationRecord, MeditationRecordBuilder> {
  _$MeditationRecord? _$v;

  String? _meditationVideo;
  String? get meditationVideo => _$this._meditationVideo;
  set meditationVideo(String? meditationVideo) =>
      _$this._meditationVideo = meditationVideo;

  String? _meditationHeader;
  String? get meditationHeader => _$this._meditationHeader;
  set meditationHeader(String? meditationHeader) =>
      _$this._meditationHeader = meditationHeader;

  String? _meditationText;
  String? get meditationText => _$this._meditationText;
  set meditationText(String? meditationText) =>
      _$this._meditationText = meditationText;

  ListBuilder<DocumentReference<Object?>>? _completedBy;
  ListBuilder<DocumentReference<Object?>> get completedBy =>
      _$this._completedBy ??= new ListBuilder<DocumentReference<Object?>>();
  set completedBy(ListBuilder<DocumentReference<Object?>>? completedBy) =>
      _$this._completedBy = completedBy;

  bool? _isFree;
  bool? get isFree => _$this._isFree;
  set isFree(bool? isFree) => _$this._isFree = isFree;

  String? _meditationUrl;
  String? get meditationUrl => _$this._meditationUrl;
  set meditationUrl(String? meditationUrl) =>
      _$this._meditationUrl = meditationUrl;

  DateTime? _uploadAt;
  DateTime? get uploadAt => _$this._uploadAt;
  set uploadAt(DateTime? uploadAt) => _$this._uploadAt = uploadAt;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MeditationRecordBuilder() {
    MeditationRecord._initializeBuilder(this);
  }

  MeditationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _meditationVideo = $v.meditationVideo;
      _meditationHeader = $v.meditationHeader;
      _meditationText = $v.meditationText;
      _completedBy = $v.completedBy?.toBuilder();
      _isFree = $v.isFree;
      _meditationUrl = $v.meditationUrl;
      _uploadAt = $v.uploadAt;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeditationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MeditationRecord;
  }

  @override
  void update(void Function(MeditationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MeditationRecord build() => _build();

  _$MeditationRecord _build() {
    _$MeditationRecord _$result;
    try {
      _$result = _$v ??
          new _$MeditationRecord._(
              meditationVideo: meditationVideo,
              meditationHeader: meditationHeader,
              meditationText: meditationText,
              completedBy: _completedBy?.build(),
              isFree: isFree,
              meditationUrl: meditationUrl,
              uploadAt: uploadAt,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'completedBy';
        _completedBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MeditationRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
