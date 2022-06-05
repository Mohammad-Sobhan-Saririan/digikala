import 'package:digikala/ClassOfProducts/product.dart';
import 'package:digikala/ClassOfProducts/properties.dart';

class User{
  String name;
  String lastName;
  String phoneNumber;
  String email;
  String imagePath;
  List<Product> orderedProducts;
  List<Product> likedProducts;
  List<Product> toSellProducts;

  User(this.name, this.lastName, this.phoneNumber, this.email, this.imagePath);
}