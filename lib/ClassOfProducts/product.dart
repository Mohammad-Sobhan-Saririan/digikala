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
  double _rate=0 ;


  double get rate {
    if(rateList==null||rateList.isEmpty) return 0.0;
    return _rate/rateList.length;
  }

  Product(this.category, this.type, this.title, this.shopMan, this.imagePath,
      this.price, this.showProperty);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Product &&
          runtimeType == other.runtimeType &&
          category == other.category &&
          type == other.type &&
          title == other.title &&
          shopMan == other.shopMan &&
          price == other.price ;
  @override
  int get hashCode =>
      category.hashCode ^
      type.hashCode ^
      title.hashCode ^
      shopMan.hashCode ^
      price.hashCode ;
}