import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:get/get.dart';
import 'package:holabellaweb/models/user_model.dart';
import 'package:holabellaweb/repositories/database_repository.dart';

class AuthController extends GetxController {
  final authInstance = auth.FirebaseAuth.instance;
  User? verifyuser;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    verifyUser();
  }

  Future<String?> signInMail(String email, String password) async {
    String? response;

    try {
      await authInstance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) => value.user?.email);

      final verify = await DataBaseRepository().verifyUser(email);

      if (verify == null) {
        signOut();

        return 'Error, usuario no valido para acceso';
      } else {
        verifyuser = verify;
        return response;
      }
    } on auth.FirebaseAuthException catch (e) {
      signOut();

      response = e.message;
    }
    return response;
  }

  Future<String?> signUpMail(String email, String password, User user) async {
    try {
      final response = await authInstance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => value.user?.email);

      if (response != null) {
        await saveUser(user);
      }
    } on auth.FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        final verify = await DataBaseRepository().verifyUser(email);
        if (verify == null) {
          return 'Correo en uso, por favor utilice otro';
        }
      }
    }
  }

  saveUser(User user) async {
    await DataBaseRepository().saveUser(user);
    // Get.offAllNamed('/home');
  }

  Future<String?> signInWithGoogle() async {
    String? response;

    try {
      // final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // final GoogleSignInAuthentication? googleAuth =
      //     await googleUser?.authentication;

      // Create a new credential
      // final credential = auth.GoogleAuthProvider.credential(
      //   accessToken: googleAuth?.accessToken,
      //   idToken: googleAuth?.idToken,
      // );

      // response =
      //     (await authInstance.signInWithCredential(credential)).user?.email;

      // if (response != null) {
      //   User? verifyUser = await DataBaseRepository().verifyUser(response);
      //   if (verifyUser != null) {
      //     print(verifyUser);
      //     Get.offAllNamed('/home');
      //   } else {
      //     Get.offAllNamed('/register');
      //   }
      // }
    } catch (e) {
      response = e.toString();
      Get.back();
    }
    return response;
  }

  Future<void> signOut() async {
    await authInstance.signOut();
    Get.offAllNamed('/login');
  }

  Future<User?> verifyUser() async {
    await Future.delayed(const Duration(seconds: 2));
    final localUser = authInstance.currentUser;
    if (localUser != null) {
      verifyuser = await DataBaseRepository().verifyUser(localUser.email!);
      if (verifyuser != null) {
        Get.toNamed('/home');
        return verifyuser;
      } else {
        Get.toNamed('/home');

        return null;
      }
    } else {
      Get.toNamed('/home');

      return null;
    }
  }
}
