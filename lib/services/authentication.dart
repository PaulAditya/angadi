import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Auth change
  Stream<User> get user {
    return _auth.authStateChanges();
  }

  //Sign-in with Email and Password
  Future signInWithEmail(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return result.user;
    } catch (e) {
      print(e);
      return null;
    }
  }

  //Register
  Future<User> signUp(String email, String password) async {
    User user;

    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      user = result.user;
      return user;
    } catch (error) {
      switch (error.code) {
        case "ERROR_EMAIL_ALREADY_IN_USE":
          {
            print("ERROR_EMAIL_ALREADY_IN_USE");
            return null;
          }
          break;
        case "ERROR_WEAK_PASSWORD":
          {
            print("ERROR_WEAK_PASSWORD");
            return null;
          }
          break;
        default:
          {
            print("Try Again");
            return null;
          }
      }
    }
  }

  //Sign-out

}
