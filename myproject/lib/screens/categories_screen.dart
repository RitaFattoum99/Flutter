// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../app_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
        ),
        title: Text(
          "Categories",
          style: TextStyle(
              // fontFamily: 'Pacifico',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).canvasColor),
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 8 / 7,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        children: categories_data
            .map((categoryData) => CategoryItem(
                categoryData.id, categoryData.name, categoryData.image))
            .toList(),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add, color: Color.fromRGBO(8, 48, 74, 1)),
      // ),
    );
  }
}
