import 'package:firebase_auth/firebase_auth.dart';

class LocalUser{
  String id;

  LocalUser.fromFirebase(User user){
    id = user.uid;

  }
}