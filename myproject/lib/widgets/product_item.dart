import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import '../app_data.dart';
import '../screens/product_detail_screen.dart';
import '../models/product.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem({
    required this.id,
    required this.title,
    required this.imageUrl,
  });

  void selectProduct(BuildContext context) {
    Navigator.of(context).pushNamed(
      ProductDetailScreen.screenRoute,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgument['id'];
    final categoryTitle = routeArgument['title'];
    final filterproducts = products_data.where((product) {
      return product.categories.contains(categoryId);
    }).toList();
    return InkWell(
        onTap: () => selectProduct(context),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 7,
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 250,
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.headline6,
                      overflow: TextOverflow.fade,
                    ),
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.remove_red_eye_rounded,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Comment",
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    LikeButton(
                      circleColor: CircleColor(
                          start: Color(0xff00ddff), end: Color(0xff0099cc)),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Color.fromRGBO(179, 94, 99, 1),
                        dotSecondaryColor: Color.fromRGBO(236, 215, 4, 1),
                      ),
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          Icons.favorite,
                          color: isLiked ? Colors.pink : Colors.grey,
                        );
                      },
                      likeCount: 0,
                    ),
                    // Text("comment"),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
