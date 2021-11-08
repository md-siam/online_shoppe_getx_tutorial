import 'package:get/get.dart';
import 'package:online_shoppe_getx/models/product.dart';

class ShoppingController extends GetxController {
  var products = [].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducrs();
  }

  void fetchProducrs() async {
    await Future.delayed(const Duration(seconds: 1));
    var productResult = [
      Product(
          id: 1,
          price: 30,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'FirstProd'),
      Product(
          id: 2,
          price: 40,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'SecProd'),
      Product(
          id: 3,
          price: 49.5,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'ThirdProd'),
    ];
    products.value = productResult;
  }
}
