// import 'package:flutter/material.dart';
import 'package:myproject/models/user.dart';
// import 'package:myproject/screens/userProfile_screen.dart';
import 'models/category.dart';
import 'models/product.dart';

// ignore: unnecessary_const
const categories_data = const [
  Category(
    id: 'c1',
    name: 'food',
    image: 'food.JPG',
  ),
  Category(
    id: 'c2',
    name: 'medicines',
    image: 'assets/images/medicines.JPG',
  ),
  Category(id: 'c3', name: 'makeup', image: 'assets/images/makeup.JPG'),
  Category(
    id: 'c4',
    name: 'paint',
    image: 'assets/images/paint.JPG',
  ),
  Category(
    id: 'c5',
    name: 'Detergent',
    image: 'assets/images/Detergent.JPG',
  ),
  Category(
    id: 'c6',
    name: 'Others',
    image: '',
  ),
];
const products_data = const [
  Product(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'cheese',
    imageUrl: 'assets/images/cheese.JPG',
    date: '1/5/2022',
    quantity: 5,
    price: 5,
    connect: "0966208731",
  ),
  Product(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'meat',
    imageUrl: 'assets/images/meat.JPG',
    date: '2/4/2021',
    quantity: 1,
    price: 6,
    connect: "0966208731",
  ),
  Product(
    id: 'm3',
    categories: [
      'c2',
    ],
    title: 'cetamol',
    imageUrl: 'assets/images/cetamol.JPG',
    date: '1/5/2020',
    quantity: 25,
    price: 15,
    connect: "0966208731",
  ),
  Product(
    id: 'm4',
    categories: [
      'c3',
    ],
    title: 'foundation',
    imageUrl: 'assets/images/foundation.JPG',
    date: '5/4/2025',
    quantity: 10,
    price: 10,
    connect: "0966208731",
  ),
  Product(
    id: 'm5',
    categories: [
      'c4',
    ],
    title: 'Oil paints',
    imageUrl: 'assets/images/Oil paints.JPG',
    date: '1/6/2023',
    quantity: 8,
    price: 25,
    connect: "0966208731",
  ),
  Product(
    id: 'm6',
    categories: [
      'c4',
    ],
    title: 'watercolor paints',
    imageUrl: 'assets/images/watercolor paints.JPG',
    date: '1/1/2022',
    quantity: 20,
    price: 14,
    connect: "0966208731",
  ),
  Product(
    id: 'm7',
    categories: [
      'c5',
    ],
    title: 'surface sanitizer',
    imageUrl: 'assets/images/surface sanitizer.JPG',
    date: '1/5/2022',
    quantity: 17,
    price: 20,
    connect: "0966208731",
  ),
];

// const UserProfile = const [
//   User(
//     imagePath:
//         'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80',
//     name: 'Sarah Abs',
//     email: 'sarah.abs@gmail.com',
//     about:
//         'Certified Personal Trainer and Nutritionist with years of experience in creating effective diets and training plans focused on achieving individual customers goals in a smooth way.',
//     isDarkMode: false,
//   ),
// ];
class UserPreferences {
  static const myUser = User(
    imagePath: 'assets/images/Profile Image.JPG',
    name: 'Sarah Abs',
    email: 'sarah.abs@gmail.com',
    about:
        'Certified Personal Trainer and Nutritionist with years of experience in creating effective diets and training plans focused on achieving individual customers goals in a smooth way.',
    isDarkMode: false,
  );
}
