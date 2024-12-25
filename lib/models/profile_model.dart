import 'package:flutter/material.dart';

class ProfileModel extends ChangeNotifier {
  String _username = "Guest";
  String get username => _username;

  void updateUsername(String newUsername) {
    _username = newUsername;
    notifyListeners();
  }
}
