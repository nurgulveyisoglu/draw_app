import 'package:draw_app/view/main_page.dart';
import 'package:draw_app/view/register_page.dart';
import 'package:draw_app/view_model/main_page_view_model.dart';
import 'package:draw_app/view_model/register_page_view_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginViewModel with ChangeNotifier {
  FirebaseAuth _auth = FirebaseAuth.instance;

  void login(BuildContext context, String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      print(_auth.currentUser != null);
      _showSnackbar(context, 'Giriş başarılı');
      _openMainPage(context);
    } on FirebaseAuthException catch (e) {
      _showSnackbar(context, e.message.toString());
    }
  }

  // void register(BuildContext context, String email, String password) async {
  //   try {
  //     _auth.createUserWithEmailAndPassword(email: email, password: password);
  //     print(_auth.currentUser != null);
  //     _showSnackbar(context, 'Kayıt başarılı');
  //   } on FirebaseAuthException catch (e) {
  //     _showSnackbar(context, e.message.toString());
  //   }
  // }

  // void _forgotPassword() {
  //   _auth.sendPasswordResetEmail(email: email);
  // }

  void _showSnackbar(BuildContext context, String message) {
    SnackBar snackBar = SnackBar(
      content: Text(message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openRegisterPage(BuildContext context) {
    MaterialPageRoute pageRoute = MaterialPageRoute(
      builder: (context) => ChangeNotifierProvider(
        create: (context) => RegisterViewModel(),
        child: RegisterPage(),
      ),
    );
    Navigator.pushReplacement(context, pageRoute);
  }

  void _openMainPage(BuildContext context) {
    MaterialPageRoute pageRoute = MaterialPageRoute(
      builder: (context) => ChangeNotifierProvider(
        create: (context) => MainViewModel(),
        child: MainPage(),
      ),
    );
    Navigator.pushReplacement(context, pageRoute);
  }
}
