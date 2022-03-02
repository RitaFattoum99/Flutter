import 'package:flutter/material.dart';
import 'package:myproject/app_data.dart';

class ProductDetailScreen extends StatelessWidget {
  static const screenRoute = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedproduct =
        products_data.firstWhere((product) => product.id == productId);
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
          ),
          title: Text(
            selectedproduct.title,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).canvasColor),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  selectedproduct.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                alignment: Alignment.topLeft,
                child: Text(
                  "",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 232, 205, 1),
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: IconButton(
                          icon: Icon(Icons.date_range),
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                        ),
                      ),
                      title: Text("Expiration: ${selectedproduct.date}"),
                    ),
                    Divider(),
                    ListTile(
                      leading: CircleAvatar(
                        child: IconButton(
                          icon: Icon(Icons.shopping_cart),
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                        ),
                      ),
                      title: Text("Quantity: ${selectedproduct.quantity}"),
                    ),
                    Divider(),
                    ListTile(
                      leading: CircleAvatar(
                        child: IconButton(
                          icon: Icon(Icons.price_check),
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                        ),
                      ),
                      title: Text("price: ${selectedproduct.price}"),
                    ),
                    Divider(),
                    ListTile(
                      leading: CircleAvatar(
                        child: IconButton(
                          icon: Icon(Icons.phone),
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                        ),
                      ),
                      title: Text("phone: ${selectedproduct.connect}"),
                    ),
                    Divider(),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ));
  }
}
