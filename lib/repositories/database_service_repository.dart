import 'package:cloud_firestore/cloud_firestore.dart' as fire;
import 'package:holabellaweb/models/service_model.dart';
import 'package:holabellaweb/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supa;

class DataBaseServiceRepository {
  final firestore = fire.FirebaseFirestore.instance;
  final supabase = supa.Supabase.instance.client;

  Future<List<ServiceModel?>> getAmbassadorServices(
      String ambassador_email) async {
    try {
      return supabase
          .from('ambassador_history')
          .select()
          .eq('ambassador', ambassador_email)
          .then((data) {
        List<ServiceModel?> services = [];

        data.forEach((element) async {
          ServiceModel serviceModel = ServiceModel();

          serviceModel.name = element['name'];
          serviceModel.person = element['person'];
          serviceModel.date = element['date'].toString();
          serviceModel.price = element['price'].toString();
          serviceModel.hour = element['hour'];
          serviceModel.category = element['category'];
          serviceModel.user_email = await username(element['user_email']);
          serviceModel.ambassador = element['ambassador'];
          services.add(serviceModel);
        });
        return services;
      });
    } catch (e) {
      print(e);

      return [];
    }
  }

  Future<String> username(String useremail) async {
    try {
      final aux =
          await supabase.from('users').select('name').eq('email', useremail);
      return aux.first['name'];
    } catch (e) {
      return '';
    }
  }
}
