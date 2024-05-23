import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthVM extends ChangeNotifier {
  bool isLoggedIn = false;
  String error = '';
  bool login({required String email, required String
  password}) {
    if (email == 'test@email.com' && password ==
        'testpass') {
      error = '';
      isLoggedIn = true;
      notifyListeners();
      return true;
    }
    error = 'Invalid credentials';
    return false;
  }
  bool logout() {
    if (!isLoggedIn) {
      error = 'Not logged in';
      notifyListeners();
      return false;
    }
    error = '';
    isLoggedIn = false;
    notifyListeners();
    return true;
  }
}
final authVM = ChangeNotifierProvider<AuthVM>((ref) =>
    AuthVM());