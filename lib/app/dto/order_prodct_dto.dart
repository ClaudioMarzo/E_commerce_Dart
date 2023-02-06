import 'package:app_delivery/app/models/product_model.dart';

class OrderProdctDto {
  late final ProductModel product;
  late final int amount;

  OrderProdctDto({
    required this.product,
    required this.amount,
  });

  double get totalPrice => amount * product.price;
}
