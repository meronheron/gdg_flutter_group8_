import '../models/user.dart';
import '../services/api_service.dart';
import '../services/storage_service.dart';

class UserRepository {
  /// Fetch users from the API
  Future<List<User>> getUsers() async {
    return await ApiService.fetchUsers();
  }

  /// Save a user to SharedPreferences
  Future<void> saveUser(User user) async {
    await StorageService.saveUser(user);
  }

  /// Load the last saved user from SharedPreferences
  Future<User?> getSavedUser() async {
    return await StorageService.getSavedUser();
  }
}
