import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _mKsFamily = 'MKs';
  static const String _mkFamily = 'Mk';
  static const String _clndrFamily = 'Clndr';
  static const String _lockFamily = 'Lock';

  // MKs
  static const IconData khome = IconData(0xe900, fontFamily: _mKsFamily);
  static const IconData kmicrophone = IconData(0xe901, fontFamily: _mKsFamily);
  static const IconData kprofile = IconData(0xe902, fontFamily: _mKsFamily);
  static const IconData kflower = IconData(0xe903, fontFamily: _mKsFamily);
  static const IconData kdiamond = IconData(0xe904, fontFamily: _mKsFamily);

  // mk
  static const IconData kfiRrEdit = IconData(0xe900, fontFamily: _mkFamily);
  static const IconData kfiRrPicture = IconData(0xe901, fontFamily: _mkFamily);
  static const IconData kfiRrSettings = IconData(0xe902, fontFamily: _mkFamily);
  static const IconData kfiRrSignOutAlt =
      IconData(0xe903, fontFamily: _mkFamily);
  static const IconData kfiRrTrash = IconData(0xe904, fontFamily: _mkFamily);
  static const IconData kicRoundCheckCircleOutline =
      IconData(0xe905, fontFamily: _mkFamily);
  static const IconData kvector = IconData(0xe906, fontFamily: _mkFamily);
  static const IconData kvector1 = IconData(0xe907, fontFamily: _mkFamily);
  static const IconData kvector2 = IconData(0xe908, fontFamily: _mkFamily);

  // clndr
  static const IconData kfiRrCalendar =
      IconData(0xe900, fontFamily: _clndrFamily);

  // lock
  static const IconData kfiRrLock = IconData(0xe900, fontFamily: _lockFamily);
}
