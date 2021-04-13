import 'package:hortum_mobile/data/announ_data_backend.dart';
import 'package:hortum_mobile/data/productors_data_backend.dart';

class HomeCustomerServices {
  static populateData(bool isAnnouncements, String filter,
      AnnounDataApi announData, ProductorsDataApi productorsData) async {
    if (isAnnouncements) {
      await announData.getAnnoun(filter);
    } else {
      await productorsData.getProductors(filter);
    }
  }
}