// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_content_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AudioContentRecord> _$audioContentRecordSerializer =
    new _$AudioContentRecordSerializer();

class _$AudioContentRecordSerializer
    implements StructuredSerializer<AudioContentRecord> {
  @override
  final Iterable<Type> types = const [AudioContentRecord, _$AudioContentRecord];
  @override
  final String wireName = 'AudioContentRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AudioContentRecord object,
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
    value = object.audio;
    if (value != null) {
      result
        ..add('audio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.audioHeader;
    if (value != null) {
      result
        ..add('audio_header')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.audioDescription;
    if (value != null) {
      result
        ..add('audio_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.audioUrl;
    if (value != null) {
      result
        ..add('audio_url')
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
    value = object.audioLink;
    if (value != null) {
      result
        ..add('audio_link')
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
  AudioContentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AudioContentRecordBuilder();

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
        case 'audio':
          result.audio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'audio_header':
          result.audioHeader = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'audio_description':
          result.audioDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'audio_url':
          result.audioUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'record_created_at':
          result.recordCreatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'audio_link':
          result.audioLink = serializers.deserialize(value,
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

class _$AudioContentRecord extends AudioContentRecord {
  @override
  final DocumentReference<Object?>? mindfulness;
  @override
  final String? cardHeader;
  @override
  final String? cardDescription;
  @override
  final String? audio;
  @override
  final String? audioHeader;
  @override
  final String? audioDescription;
  @override
  final String? audioUrl;
  @override
  final DateTime? recordCreatedAt;
  @override
  final String? audioLink;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AudioContentRecord(
          [void Function(AudioContentRecordBuilder)? updates]) =>
      (new AudioContentRecordBuilder()..update(updates))._build();

  _$AudioContentRecord._(
      {this.mindfulness,
      this.cardHeader,
      this.cardDescription,
      this.audio,
      this.audioHeader,
      this.audioDescription,
      this.audioUrl,
      this.recordCreatedAt,
      this.audioLink,
      this.ffRef})
      : super._();

  @override
  AudioContentRecord rebuild(
          void Function(AudioContentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AudioContentRecordBuilder toBuilder() =>
      new AudioContentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AudioContentRecord &&
        mindfulness == other.mindfulness &&
        cardHeader == other.cardHeader &&
        cardDescription == other.cardDescription &&
        audio == other.audio &&
        audioHeader == other.audioHeader &&
        audioDescription == other.audioDescription &&
        audioUrl == other.audioUrl &&
        recordCreatedAt == other.recordCreatedAt &&
        audioLink == other.audioLink &&
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
                                $jc(
                                    $jc($jc(0, mindfulness.hashCode),
                                        cardHeader.hashCode),
                                    cardDescription.hashCode),
                                audio.hashCode),
                            audioHeader.hashCode),
                        audioDescription.hashCode),
                    audioUrl.hashCode),
                recordCreatedAt.hashCode),
            audioLink.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AudioContentRecord')
          ..add('mindfulness', mindfulness)
          ..add('cardHeader', cardHeader)
          ..add('cardDescription', cardDescription)
          ..add('audio', audio)
          ..add('audioHeader', audioHeader)
          ..add('audioDescription', audioDescription)
          ..add('audioUrl', audioUrl)
          ..add('recordCreatedAt', recordCreatedAt)
          ..add('audioLink', audioLink)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AudioContentRecordBuilder
    implements Builder<AudioContentRecord, AudioContentRecordBuilder> {
  _$AudioContentRecord? _$v;

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

  String? _audio;
  String? get audio => _$this._audio;
  set audio(String? audio) => _$this._audio = audio;

  String? _audioHeader;
  String? get audioHeader => _$this._audioHeader;
  set audioHeader(String? audioHeader) => _$this._audioHeader = audioHeader;

  String? _audioDescription;
  String? get audioDescription => _$this._audioDescription;
  set audioDescription(String? audioDescription) =>
      _$this._audioDescription = audioDescription;

  String? _audioUrl;
  String? get audioUrl => _$this._audioUrl;
  set audioUrl(String? audioUrl) => _$this._audioUrl = audioUrl;

  DateTime? _recordCreatedAt;
  DateTime? get recordCreatedAt => _$this._recordCreatedAt;
  set recordCreatedAt(DateTime? recordCreatedAt) =>
      _$this._recordCreatedAt = recordCreatedAt;

  String? _audioLink;
  String? get audioLink => _$this._audioLink;
  set audioLink(String? audioLink) => _$this._audioLink = audioLink;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AudioContentRecordBuilder() {
    AudioContentRecord._initializeBuilder(this);
  }

  AudioContentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mindfulness = $v.mindfulness;
      _cardHeader = $v.cardHeader;
      _cardDescription = $v.cardDescription;
      _audio = $v.audio;
      _audioHeader = $v.audioHeader;
      _audioDescription = $v.audioDescription;
      _audioUrl = $v.audioUrl;
      _recordCreatedAt = $v.recordCreatedAt;
      _audioLink = $v.audioLink;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AudioContentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AudioContentRecord;
  }

  @override
  void update(void Function(AudioContentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AudioContentRecord build() => _build();

  _$AudioContentRecord _build() {
    final _$result = _$v ??
        new _$AudioContentRecord._(
            mindfulness: mindfulness,
            cardHeader: cardHeader,
            cardDescription: cardDescription,
            audio: audio,
            audioHeader: audioHeader,
            audioDescription: audioDescription,
            audioUrl: audioUrl,
            recordCreatedAt: recordCreatedAt,
            audioLink: audioLink,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
