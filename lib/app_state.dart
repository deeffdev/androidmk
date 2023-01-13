import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _LockIcon = prefs.getBool('ff_LockIcon') ?? _LockIcon;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _Offer = false;
  bool get Offer => _Offer;
  set Offer(bool _value) {
    _Offer = _value;
  }

  String _video = '';
  String get video => _video;
  set video(String _value) {
    _video = _value;
  }

  String _Meditationvideo = '';
  String get Meditationvideo => _Meditationvideo;
  set Meditationvideo(String _value) {
    _Meditationvideo = _value;
  }

  String _Image = '';
  String get Image => _Image;
  set Image(String _value) {
    _Image = _value;
  }

  String _Header = '';
  String get Header => _Header;
  set Header(String _value) {
    _Header = _value;
  }

  String _Text = '';
  String get Text => _Text;
  set Text(String _value) {
    _Text = _value;
  }

  String _cardheader = '';
  String get cardheader => _cardheader;
  set cardheader(String _value) {
    _cardheader = _value;
  }

  String _cardtext = '';
  String get cardtext => _cardtext;
  set cardtext(String _value) {
    _cardtext = _value;
  }

  bool _LockIcon = false;
  bool get LockIcon => _LockIcon;
  set LockIcon(bool _value) {
    _LockIcon = _value;
    prefs.setBool('ff_LockIcon', _value);
  }

  String _youtube = '';
  String get youtube => _youtube;
  set youtube(String _value) {
    _youtube = _value;
  }

  String _podcastvideo = '';
  String get podcastvideo => _podcastvideo;
  set podcastvideo(String _value) {
    _podcastvideo = _value;
  }

  String _meditationvideomfs = '';
  String get meditationvideomfs => _meditationvideomfs;
  set meditationvideomfs(String _value) {
    _meditationvideomfs = _value;
  }

  String _mainvideo = '';
  String get mainvideo => _mainvideo;
  set mainvideo(String _value) {
    _mainvideo = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
