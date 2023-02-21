import '../String File/image_string.dart';
import '../String File/text_string.dart';

class PaymentListModel {
  final String assetsImage;
  PaymentListModel({required this.assetsImage});
}

List<PaymentListModel> listImage = [
  PaymentListModel(assetsImage: payment_img_1),
  PaymentListModel(assetsImage: payment_img_2),
  PaymentListModel(assetsImage: payment_img_3),
];

class FoodListModel {
  final String assetsImage;
  final String? text;
  FoodListModel({required this.assetsImage, required this.text});
}

List<FoodListModel> foodlistImage = [
  FoodListModel(assetsImage: pizza_1, text: Pizza),
  FoodListModel(assetsImage: food_2, text: Burger),
  FoodListModel(assetsImage: food_3, text: Sausage),
  FoodListModel(assetsImage: food_4, text: Samosa),
  FoodListModel(assetsImage: food_1, text: Pizza),
];
