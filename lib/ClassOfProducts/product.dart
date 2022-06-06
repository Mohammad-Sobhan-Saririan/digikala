import 'package:digikala/products_categorization.dart';

import 'Catergory.dart';
import 'User.dart';

class Product{
  categoryy category;
  Typee type;
  String title;
  User shopMan;
  String imagePath;
  String price;
  List<String> showProperty ;
  List<int> rateList=[];
  double rate(){
    double a=0;
    for(int i=0;i<5;i++){
      a+=2;
    }
    return a/5;
  }



  Product(this.category, this.type, this.title, this.shopMan, this.imagePath,
      this.price, this.showProperty);
}