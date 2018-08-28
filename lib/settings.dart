class Settings {
  int myId;

  static final Settings _singleton = new Settings._internal();

  factory Settings() {
    return _singleton;
  }

  Settings._internal() {
  }

}