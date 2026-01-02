import 'package:shared_preferences/shared_preferences.dart';

class LocalDb {
  final String keyToken = "KeyToken";
  final String keyRefreshToken = "KeyRefreshToken";
  Future<SharedPreferences> get _prefs async =>
      await SharedPreferences.getInstance();
  Future<void> setToken(String token) async {
    final prefs = await _prefs;
    await prefs.setString(keyToken, token);
  }

  Future<void> setKeyRefreshToken(String refreshToken) async {
    final prefs = await _prefs;
    await prefs.setString(keyRefreshToken, refreshToken);
  }

  Future<String> getToken() async {
    final prefs = await _prefs;
    return prefs.getString(keyToken) ?? "";
  }

  Future<String> getRefreshToken() async {
    final prefs = await _prefs;
    return prefs.getString(keyRefreshToken) ?? "";
  }

  Future<void> removeToken() async {
    final prefs = await _prefs;
    await prefs.remove(keyToken);
  }
}
