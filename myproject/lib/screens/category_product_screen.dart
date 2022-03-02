import 'package:flutter/material.dart';
import '../widgets/product_item.dart';
import '../app_data.dart';

class CategoryproductsScreen extends StatelessWidget {
  static const screenRoute = '/category-products';

  const CategoryproductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgument['id'];
    final categoryTitle = routeArgument['title'];
    final filterproducts = products_data.where((product) {
      return product.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
        ),
        title: Text(
          categoryTitle!,
          style: TextStyle(
              // fontFamily: 'Pacifico',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).canvasColor),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return ProductItem(
              id: filterproducts[index].id,
              title: filterproducts[index].title,
              imageUrl: filterproducts[index].imageUrl);
        },
        itemCount: filterproducts.length,
      ),
    );
  }
}
