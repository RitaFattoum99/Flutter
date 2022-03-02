import 'package:flutter/material.dart';
import 'package:myproject/screens/tabs_screen.dart';
import '../screens/product_detail_screen.dart';
import '../screens/category_product_screen.dart';
import '../screens/tabs_screen.dart';
import '../screens/userProfile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store App',
      theme: ThemeData(
        primaryColor: const Color(0xff08304a),
        canvasColor: const Color(0xfff2e8cd),
        primaryColorDark: const Color(0xff547388), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xffb35e63)),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const TabsScreen(),
        CategoryproductsScreen.screenRoute: (ctx) => CategoryproductsScreen(),
        ProductDetailScreen.screenRoute: (ctx) => ProductDetailScreen(),
        Body.screenRoute: (ctx) => Body(),
      },
    );
  }
}
