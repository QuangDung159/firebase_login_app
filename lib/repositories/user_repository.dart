import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserRepository {
  FirebaseAuth? _firebaseAuth;
  GoogleSignIn? _googleSignIn;

  UserRepository({FirebaseAuth? firebaseAuth, GoogleSignIn? googleSignin}) {
    _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;
    _googleSignIn = googleSignin ?? GoogleSignIn();
  }

  Future<UserCredential?> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    return await _firebaseAuth?.signInWithEmailAndPassword(
        email: email.trim(), password: password);
  }

  Future<UserCredential?> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    return await _firebaseAuth?.createUserWithEmailAndPassword(
        email: email.trim(), password: password);
  }

  Future<List<void>> signOut() async {
    return await Future.wait(
        [_firebaseAuth!.signOut(), _googleSignIn!.signOut()]);
  }

  Future<User?> getUser() async {
    return _firebaseAuth!.currentUser;
  }

  Future<UserCredential?> signInWithGoogle() async {
    final GoogleSignInAccount? googleSignInAccount =
        await _googleSignIn!.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;
    final AuthCredential authCredential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);
    return await _firebaseAuth?.signInWithCredential(authCredential);
  }
}
