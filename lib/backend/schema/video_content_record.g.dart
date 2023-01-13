// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_content_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideoContentRecord> _$videoContentRecordSerializer =
    new _$VideoContentRecordSerializer();

class _$VideoContentRecordSerializer
    implements StructuredSerializer<VideoContentRecord> {
  @override
  final Iterable<Type> types = const [VideoContentRecord, _$VideoContentRecord];
  @override
  final String wireName = 'VideoContentRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, VideoContentRecord object,
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
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.videoHeader;
    if (value != null) {
      result
        ..add('video_header')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.videoDescription;
    if (value != null) {
      result
        ..add('video_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.videoUrl;
    if (value != null) {
      result
        ..add('video_url')
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
  VideoContentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideoContentRecordBuilder();

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
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'video_header':
          result.videoHeader = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'video_description':
          result.videoDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'video_url':
          result.videoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$VideoContentRecord extends VideoContentRecord {
  @override
  final DocumentReference<Object?>? mindfulness;
  @override
  final String? cardHeader;
  @override
  final String? cardDescription;
  @override
  final String? video;
  @override
  final String? videoHeader;
  @override
  final String? videoDescription;
  @override
  final String? videoUrl;
  @override
  final DateTime? recordCreatedAt;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VideoContentRecord(
          [void Function(VideoContentRecordBuilder)? updates]) =>
      (new VideoContentRecordBuilder()..update(updates))._build();

  _$VideoContentRecord._(
      {this.mindfulness,
      this.cardHeader,
      this.cardDescription,
      this.video,
      this.videoHeader,
      this.videoDescription,
      this.videoUrl,
      this.recordCreatedAt,
      this.ffRef})
      : super._();

  @override
  VideoContentRecord rebuild(
          void Function(VideoContentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoContentRecordBuilder toBuilder() =>
      new VideoContentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoContentRecord &&
        mindfulness == other.mindfulness &&
        cardHeader == other.cardHeader &&
        cardDescription == other.cardDescription &&
        video == other.video &&
        videoHeader == other.videoHeader &&
        videoDescription == other.videoDescription &&
        videoUrl == other.videoUrl &&
        recordCreatedAt == other.recordCreatedAt &&
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
                            $jc(
                                $jc($jc(0, mindfulness.hashCode),
                                    cardHeader.hashCode),
                                cardDescription.hashCode),
                            video.hashCode),
                        videoHeader.hashCode),
                    videoDescription.hashCode),
                videoUrl.hashCode),
            recordCreatedAt.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VideoContentRecord')
          ..add('mindfulness', mindfulness)
          ..add('cardHeader', cardHeader)
          ..add('cardDescription', cardDescription)
          ..add('video', video)
          ..add('videoHeader', videoHeader)
          ..add('videoDescription', videoDescription)
          ..add('videoUrl', videoUrl)
          ..add('recordCreatedAt', recordCreatedAt)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VideoContentRecordBuilder
    implements Builder<VideoContentRecord, VideoContentRecordBuilder> {
  _$VideoContentRecord? _$v;

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

  String? _video;
  String? get video => _$this._video;
  set video(String? video) => _$this._video = video;

  String? _videoHeader;
  String? get videoHeader => _$this._videoHeader;
  set videoHeader(String? videoHeader) => _$this._videoHeader = videoHeader;

  String? _videoDescription;
  String? get videoDescription => _$this._videoDescription;
  set videoDescription(String? videoDescription) =>
      _$this._videoDescription = videoDescription;

  String? _videoUrl;
  String? get videoUrl => _$this._videoUrl;
  set videoUrl(String? videoUrl) => _$this._videoUrl = videoUrl;

  DateTime? _recordCreatedAt;
  DateTime? get recordCreatedAt => _$this._recordCreatedAt;
  set recordCreatedAt(DateTime? recordCreatedAt) =>
      _$this._recordCreatedAt = recordCreatedAt;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VideoContentRecordBuilder() {
    VideoContentRecord._initializeBuilder(this);
  }

  VideoContentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mindfulness = $v.mindfulness;
      _cardHeader = $v.cardHeader;
      _cardDescription = $v.cardDescription;
      _video = $v.video;
      _videoHeader = $v.videoHeader;
      _videoDescription = $v.videoDescription;
      _videoUrl = $v.videoUrl;
      _recordCreatedAt = $v.recordCreatedAt;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideoContentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VideoContentRecord;
  }

  @override
  void update(void Function(VideoContentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VideoContentRecord build() => _build();

  _$VideoContentRecord _build() {
    final _$result = _$v ??
        new _$VideoContentRecord._(
            mindfulness: mindfulness,
            cardHeader: cardHeader,
            cardDescription: cardDescription,
            video: video,
            videoHeader: videoHeader,
            videoDescription: videoDescription,
            videoUrl: videoUrl,
            recordCreatedAt: recordCreatedAt,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
