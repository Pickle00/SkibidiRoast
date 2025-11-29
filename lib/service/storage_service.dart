import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static SharedPreferences? pref;
  StorageService._internal();
  static final StorageService _instance = StorageService._internal();
  static StorageService get instance => _instance;

  static Future<void> init() async {
    pref = await SharedPreferences.getInstance();
  }

  static const String firstLaunchKey = 'first_launch';

  static Future<bool> checkFirstLaunch() async {
    if (pref == null) return false;

    final isFirst = pref!.getBool(firstLaunchKey) ?? true;

    if (isFirst) {
      await pref!.setBool(firstLaunchKey, false);
    }

    return isFirst;
  }
}
