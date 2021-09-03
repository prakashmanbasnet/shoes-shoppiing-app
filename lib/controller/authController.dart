import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:shoesapp/constant/firebase.dart';
import 'package:shoesapp/model/userModel.dart';
import 'package:shoesapp/views/authentication/LoginPage.dart';
import 'package:shoesapp/views/home/home-page.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  Rx<User?>? firebaseUser;
  String userCollection = 'users';
  Rx<UserModel> userModel =
      UserModel(email: '', password: '', username: '').obs;

  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void onReady() {
    firebaseUser = Rx<User?>(auth.currentUser);
    firebaseUser!.bindStream(auth.userChanges());
    ever(firebaseUser!, setInitialScreen);
  }

  setInitialScreen(User? user) {
    if (user == null) {
      Get.offAll(()=>LoginPage());
    } else {
      Get.offAll(()=>HomePage());
    }
  }

  void signIn() {
    try {
      auth.signInWithEmailAndPassword(
          email: email.text.trim(), password: password.text.trim());
      _clearController();
    } catch (e) {
      print(e.toString());
      Get.snackbar('Error', 'Failed to signin');
    }

    
  }

  void signUp() {
      try {
        auth
            .createUserWithEmailAndPassword(
                email: email.text.trim(), password: password.text.trim())
            .then((result) {
          String _userId = result.user!.uid;
          _addToFireStore(_userId);
        });
      } catch (e) {
        print(e.toString());
        Get.snackbar('failed', 'failed to create account');
      }
    }

    void signOut(){
      auth.signOut();
    }

  _addToFireStore(String userId) {
    firebaseFirestore.collection(userCollection).doc(userId).set({
      'name': username.text.trim(),
      'email': email.text.trim(),
      'id': userId,
    });
  }

  _clearController() {
    username.clear();
    email.clear();
    password.clear();
  }

  Stream<UserModel> listenToUser() => firebaseFirestore
      .collection(userCollection)
      .doc(firebaseUser!.value!.uid)
      .snapshots()
      .map((snapshot) => UserModel.fromSnapshot(snapshot));
}
