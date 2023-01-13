// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcasts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PodcastsRecord> _$podcastsRecordSerializer =
    new _$PodcastsRecordSerializer();

class _$PodcastsRecordSerializer
    implements StructuredSerializer<PodcastsRecord> {
  @override
  final Iterable<Type> types = const [PodcastsRecord, _$PodcastsRecord];
  @override
  final String wireName = 'PodcastsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PodcastsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.podcastHeader;
    if (value != null) {
      result
        ..add('podcast_header')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.podcastText;
    if (value != null) {
      result
        ..add('podcast_text')
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
    value = object.podcastCover;
    if (value != null) {
      result
        ..add('podcast_cover')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.podastAudioLink;
    if (value != null) {
      result
        ..add('podast_audio_link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.podcastUrl;
    if (value != null) {
      result
        ..add('podcast_url')
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
  PodcastsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PodcastsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'podcast_header':
          result.podcastHeader = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'podcast_text':
          result.podcastText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'upload_at':
          result.uploadAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'podcast_cover':
          result.podcastCover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'podast_audio_link':
          result.podastAudioLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'podcast_url':
          result.podcastUrl = serializers.deserialize(value,
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

class _$PodcastsRecord extends PodcastsRecord {
  @override
  final String? podcastHeader;
  @override
  final String? podcastText;
  @override
  final DateTime? uploadAt;
  @override
  final String? podcastCover;
  @override
  final String? podastAudioLink;
  @override
  final String? podcastUrl;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PodcastsRecord([void Function(PodcastsRecordBuilder)? updates]) =>
      (new PodcastsRecordBuilder()..update(updates))._build();

  _$PodcastsRecord._(
      {this.podcastHeader,
      this.podcastText,
      this.uploadAt,
      this.podcastCover,
      this.podastAudioLink,
      this.podcastUrl,
      this.ffRef})
      : super._();

  @override
  PodcastsRecord rebuild(void Function(PodcastsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PodcastsRecordBuilder toBuilder() =>
      new PodcastsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PodcastsRecord &&
        podcastHeader == other.podcastHeader &&
        podcastText == other.podcastText &&
        uploadAt == other.uploadAt &&
        podcastCover == other.podcastCover &&
        podastAudioLink == other.podastAudioLink &&
        podcastUrl == other.podcastUrl &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, podcastHeader.hashCode),
                            podcastText.hashCode),
                        uploadAt.hashCode),
                    podcastCover.hashCode),
                podastAudioLink.hashCode),
            podcastUrl.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PodcastsRecord')
          ..add('podcastHeader', podcastHeader)
          ..add('podcastText', podcastText)
          ..add('uploadAt', uploadAt)
          ..add('podcastCover', podcastCover)
          ..add('podastAudioLink', podastAudioLink)
          ..add('podcastUrl', podcastUrl)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PodcastsRecordBuilder
    implements Builder<PodcastsRecord, PodcastsRecordBuilder> {
  _$PodcastsRecord? _$v;

  String? _podcastHeader;
  String? get podcastHeader => _$this._podcastHeader;
  set podcastHeader(String? podcastHeader) =>
      _$this._podcastHeader = podcastHeader;

  String? _podcastText;
  String? get podcastText => _$this._podcastText;
  set podcastText(String? podcastText) => _$this._podcastText = podcastText;

  DateTime? _uploadAt;
  DateTime? get uploadAt => _$this._uploadAt;
  set uploadAt(DateTime? uploadAt) => _$this._uploadAt = uploadAt;

  String? _podcastCover;
  String? get podcastCover => _$this._podcastCover;
  set podcastCover(String? podcastCover) => _$this._podcastCover = podcastCover;

  String? _podastAudioLink;
  String? get podastAudioLink => _$this._podastAudioLink;
  set podastAudioLink(String? podastAudioLink) =>
      _$this._podastAudioLink = podastAudioLink;

  String? _podcastUrl;
  String? get podcastUrl => _$this._podcastUrl;
  set podcastUrl(String? podcastUrl) => _$this._podcastUrl = podcastUrl;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PodcastsRecordBuilder() {
    PodcastsRecord._initializeBuilder(this);
  }

  PodcastsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _podcastHeader = $v.podcastHeader;
      _podcastText = $v.podcastText;
      _uploadAt = $v.uploadAt;
      _podcastCover = $v.podcastCover;
      _podastAudioLink = $v.podastAudioLink;
      _podcastUrl = $v.podcastUrl;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PodcastsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PodcastsRecord;
  }

  @override
  void update(void Function(PodcastsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PodcastsRecord build() => _build();

  _$PodcastsRecord _build() {
    final _$result = _$v ??
        new _$PodcastsRecord._(
            podcastHeader: podcastHeader,
            podcastText: podcastText,
            uploadAt: uploadAt,
            podcastCover: podcastCover,
            podastAudioLink: podastAudioLink,
            podcastUrl: podcastUrl,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
