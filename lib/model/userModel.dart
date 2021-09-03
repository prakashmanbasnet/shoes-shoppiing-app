
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel{
  static const EMAIL='email';
  static const USERNAME='username';
  static const PASSWORD='password';
  
  String? email;
  String? username;
  String? password;

UserModel({required this.email,required this.username,required this.password});

UserModel.fromSnapshot(DocumentSnapshot snapshot){
email=snapshot[EMAIL];
username=snapshot[USERNAME];
password=snapshot[PASSWORD];
}
}