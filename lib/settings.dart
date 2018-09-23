
class Settings {
  String myId;
  String myDeviceId='10000000-0000-0000-1000-000000000001';

  static final Settings _singleton = new Settings._internal();

  factory Settings() {
    return _singleton;
  }

  Settings._internal() {
  }

}