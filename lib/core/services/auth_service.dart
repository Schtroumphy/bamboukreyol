import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> getAuthStateChange() => _firebaseAuth.authStateChanges();

  Future<UserCredential> signInWithEmailPassword({
    String email = "thessa972",
    String password = "bkapp972",
  }) async {
    return await _firebaseAuth.signInWithEmailAndPassword(email: "$email@bkapp.com", password: password);
  }

  Future<void> createUserWithEmailPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
  }

  Future<void> signOut() async{
    await _firebaseAuth.signOut();
  }
}
