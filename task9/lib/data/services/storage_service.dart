import 'package:shared_preferences/shared_preferences.dart';
import '../models/user.dart';

class StorageService {
  static const String keyName = "saved_name";
  static const String keyEmail = "saved_email";

  static Future<void> saveUser(User user) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(keyName, user.name);
    await prefs.setString(keyEmail, user.email);
  }

  static Future<User?> getSavedUser() async {
    final prefs = await SharedPreferences.getInstance();
    String? name = prefs.getString(keyName);
    String? email = prefs.getString(keyEmail);

    if (name != null && email != null) {
      return User(id: 0, name: name, email: email);
    }
    return null;
  }
}
