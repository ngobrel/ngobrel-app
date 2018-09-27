
class Settings {
  String myId = '10000000-0000-0000-0000-000000000001';
  String myDeviceId = '10000000-0000-0000-1000-000000000001';

  static final Settings _singleton = new Settings._internal();

  factory Settings() {
    return _singleton;
  }

  Settings._internal() {
  }

  void setIds(id, deviceID) {
    myId = id;
    myDeviceId = deviceID;
  }
}