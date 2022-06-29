import 'package:digikala/ClassOfProducts/Catergory.dart';
import 'package:digikala/ClassOfProducts/product.dart';
import 'package:digikala/ClassOfProducts/properties.dart';

class User{
  String name;
  String lastName;
  String phoneNumber;
  String password;
  String email;
  String imagePath;
  List<Product> orderedProducts;
  List<Product> likedProducts;
  List<Product> toSellProducts;

  User(name,lastName,phoneNumber,password){
    this.name=name;
    this.lastName=lastName;
    this.phoneNumber=phoneNumber;
    this.password=password;
    this.orderedProducts=[];
    this.likedProducts=[];
    this.toSellProducts=[];
  }
}