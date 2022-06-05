import 'package:digikala/products_categorization.dart';

import 'User.dart';

class Product{
  Category category;
  Type type;
  String title;
  User shopMan;
  String imagePath;
  String price;
  List<String> showProperty ;
  static int numberOfGoods;
  List<int> rateList;
  double rate(){
    double a=0;
    for(int i=0;i<rateList.length;i++){
      a+=rateList[i];
    }
    return a/rateList.length;
  }



  Product(this.category, this.type, this.title, this.shopMan, this.imagePath,
      this.price, this.showProperty);
}