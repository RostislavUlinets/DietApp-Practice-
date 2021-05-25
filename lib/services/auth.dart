import 'package:cours/model/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService {
  final FirebaseAuth _fAuth = FirebaseAuth.instance;

  Future<LocalUser> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential res = await _fAuth.signInWithEmailAndPassword(email: email, password: password);
      User user = res.user;
      return LocalUser.fromFirebase(user);
    } catch (e) {
      return null;
    }
  }


  Future<LocalUser> registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential res = await _fAuth.createUserWithEmailAndPassword(email: email, password: password);
      User user = res.user;
      return LocalUser.fromFirebase(user);
    } catch (e) {
      return null;
    }
  }


  Future logOut() async{
    await _fAuth.signOut();
  }

  Stream<LocalUser> get currentUser{
    return _fAuth.authStateChanges().map((User user) => user != null ? LocalUser.fromFirebase(user) : null);
  }
}
