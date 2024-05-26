import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:holabellaweb/models/service_model.dart';
import 'package:holabellaweb/repositories/database_service_repository.dart';

class ServiceController extends GetxController {
  DataBaseServiceRepository database = DataBaseServiceRepository();
  final firestore = FirebaseFirestore.instance;

  ServiceModel? newService;
  List<ServiceModel?> servicesData = [];
  @override
  void onInit() async {
    super.onInit();
  }

  getAmbassadorServices(String ambassador_email) async {
    try {
      servicesData = await database.getAmbassadorServices(ambassador_email);
    } catch (e) {}
  }
}
