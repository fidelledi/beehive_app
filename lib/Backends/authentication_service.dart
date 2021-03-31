import 'package:firebase_auth/firebase_auth.dart';
import 'package:beehive_app/Backends/firestore.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuth auth = FirebaseAuth.instance;
  AuthenticationService(this._firebaseAuth);
  Stream<User> get authStatechanges => _firebaseAuth.authStateChanges();

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<String> signIn({String email, String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Signed in";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> signUp(
      {String email, String password, String name, String school}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      await create(
        uid: auth.currentUser.uid,
        name: name,
        school: school,
      );

      return "Signed Up";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> getCurrentUID() async {
    print(auth.currentUser.uid.toString());

    return (auth.currentUser.uid);
  }
}
