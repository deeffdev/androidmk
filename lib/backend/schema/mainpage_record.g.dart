// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mainpage_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MainpageRecord> _$mainpageRecordSerializer =
    new _$MainpageRecordSerializer();

class _$MainpageRecordSerializer
    implements StructuredSerializer<MainpageRecord> {
  @override
  final Iterable<Type> types = const [MainpageRecord, _$MainpageRecord];
  @override
  final String wireName = 'MainpageRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MainpageRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.mainVideo;
    if (value != null) {
      result
        ..add('main_video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mainHeader;
    if (value != null) {
      result
        ..add('main_header')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mainText;
    if (value != null) {
      result
        ..add('main_text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mainVideoUrl;
    if (value != null) {
      result
        ..add('main_video_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  MainpageRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MainpageRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'main_video':
          result.mainVideo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'main_header':
          result.mainHeader = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'main_text':
          result.mainText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'main_video_url':
          result.mainVideoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$MainpageRecord extends MainpageRecord {
  @override
  final String? mainVideo;
  @override
  final String? mainHeader;
  @override
  final String? mainText;
  @override
  final String? mainVideoUrl;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MainpageRecord([void Function(MainpageRecordBuilder)? updates]) =>
      (new MainpageRecordBuilder()..update(updates))._build();

  _$MainpageRecord._(
      {this.mainVideo,
      this.mainHeader,
      this.mainText,
      this.mainVideoUrl,
      this.ffRef})
      : super._();

  @override
  MainpageRecord rebuild(void Function(MainpageRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainpageRecordBuilder toBuilder() =>
      new MainpageRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MainpageRecord &&
        mainVideo == other.mainVideo &&
        mainHeader == other.mainHeader &&
        mainText == other.mainText &&
        mainVideoUrl == other.mainVideoUrl &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, mainVideo.hashCode), mainHeader.hashCode),
                mainText.hashCode),
            mainVideoUrl.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MainpageRecord')
          ..add('mainVideo', mainVideo)
          ..add('mainHeader', mainHeader)
          ..add('mainText', mainText)
          ..add('mainVideoUrl', mainVideoUrl)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MainpageRecordBuilder
    implements Builder<MainpageRecord, MainpageRecordBuilder> {
  _$MainpageRecord? _$v;

  String? _mainVideo;
  String? get mainVideo => _$this._mainVideo;
  set mainVideo(String? mainVideo) => _$this._mainVideo = mainVideo;

  String? _mainHeader;
  String? get mainHeader => _$this._mainHeader;
  set mainHeader(String? mainHeader) => _$this._mainHeader = mainHeader;

  String? _mainText;
  String? get mainText => _$this._mainText;
  set mainText(String? mainText) => _$this._mainText = mainText;

  String? _mainVideoUrl;
  String? get mainVideoUrl => _$this._mainVideoUrl;
  set mainVideoUrl(String? mainVideoUrl) => _$this._mainVideoUrl = mainVideoUrl;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MainpageRecordBuilder() {
    MainpageRecord._initializeBuilder(this);
  }

  MainpageRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mainVideo = $v.mainVideo;
      _mainHeader = $v.mainHeader;
      _mainText = $v.mainText;
      _mainVideoUrl = $v.mainVideoUrl;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MainpageRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MainpageRecord;
  }

  @override
  void update(void Function(MainpageRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MainpageRecord build() => _build();

  _$MainpageRecord _build() {
    final _$result = _$v ??
        new _$MainpageRecord._(
            mainVideo: mainVideo,
            mainHeader: mainHeader,
            mainText: mainText,
            mainVideoUrl: mainVideoUrl,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
