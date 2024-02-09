import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:get/get.dart';
import 'package:holabellaweb/models/user_model.dart';
import 'package:holabellaweb/repositories/database_repository.dart';

class ServicesController extends GetxController {
  final authInstance = auth.FirebaseAuth.instance;
  User? verifyuser;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
