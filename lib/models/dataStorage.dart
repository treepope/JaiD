class UserDataStorage {
  static Map<String, String> _users = {};

  static void register(String email, String password) {
    _users[email] = password;
  }

  static bool login(String email, String password) {
    return _users[email] == password;
  }
}