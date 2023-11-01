import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String profile = 'images/profile.jpg';

var cardColor = const Color.fromRGBO(255, 255, 255, 1);
var bgColor = const Color.fromRGBO(246, 246, 248, 1);
var blueColor = const Color.fromRGBO(55, 124, 246, 1);
var graphColor = const Color.fromRGBO(149, 224, 251, 1);

var titleSize = const TextStyle(
    fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);
Stack logo() {
  return Stack(
    alignment: const Alignment(1, 0.9),
    children: [
      Container(
        height: 20,
        width: 35,
        decoration: BoxDecoration(
          color: graphColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      CircleAvatar(
        radius: 13,
        backgroundColor: blueColor,
      )
    ],
  );
}

// =========== List of grid items ===========

List gridItems = [
  {
    'icon': CupertinoIcons.money_dollar_circle,
    'subtitle': 'Earnings',
    'title': '\$928.41',
    'title1': '⬆12.8%',
    'rowsubtitle1': '+\$118.4',
    'rowsubtitle2': 'than last month',
    'color': Colors.green,
    'bgcolor': Colors.green.shade100,
  },
  {
    'icon': CupertinoIcons.shopping_cart,
    'subtitle': 'Spendings',
    'title': '\$169.43',
    'title1': '⬇12.8%',
    'rowsubtitle1': '+\$5.2',
    'rowsubtitle2': 'than last month',
    'color': Colors.red,
    'bgcolor': Colors.red.shade100,
  },
  {
    'icon': Icons.savings_outlined,
    'subtitle': 'Savings',
    'title': '\$406.27',
    'title1': '⬆8.2%',
    'rowsubtitle1': '+\$78.5',
    'rowsubtitle2': 'than last month',
    'color': Colors.green,
    'bgcolor': Colors.green.shade100,
  },
  {
    'icon': Icons.web_asset_outlined,
    'subtitle': 'Investment',
    'title': '\$1,854.08',
    'title1': '⬆9.2%',
    'rowsubtitle1': '+\$78.5',
    'rowsubtitle2': 'than last month',
    'color': Colors.green,
    'bgcolor': Colors.green.shade100,
  },
];

// === List of Table Tiles ====
List tabletitles = [
  'To/From',
  'Date',
  'Description',
  'Amount',
  'Status',
  'Action',
];

// === List of Table Items ====
List tableitems = [
  {
    'to/from': 'John Doe',
    'avatar': 'JD',
    'date': '30 oct 2023',
    'description': 'Monthly Salary',
    'amount': '\$8,500.0',
    'status': 'Success',
    'statuscolor': Colors.green,
    'icon1': Icons.link_outlined,
    'icon2': Icons.delete_outlined,
    'icon3': Icons.more_horiz,
  },
  {
    'to/from': 'John Doe',
    'avatar': 'JD',
    'date': '30 oct 2023',
    'description': 'Monthly Salary',
    'amount': '\$8,500.0',
    'status': 'Success',
    'statuscolor': Colors.green,
    'icon1': Icons.link_outlined,
    'icon2': Icons.delete_outlined,
    'icon3': Icons.more_horiz,
  },
  {
    'to/from': 'John Doe',
    'avatar': 'JD',
    'date': '30 oct 2023',
    'description': 'Monthly Salary',
    'amount': '\$8,500.0',
    'status': 'Success',
    'statuscolor': Colors.green,
    'icon1': Icons.link_outlined,
    'icon2': Icons.delete_outlined,
    'icon3': Icons.more_horiz,
  },
  {
    'to/from': 'John Doe',
    'avatar': 'JD',
    'date': '30 oct 2023',
    'description': 'Monthly Salary',
    'amount': '\$8,500.0',
    'status': 'Success',
    'statuscolor': Colors.green,
    'icon1': Icons.link_outlined,
    'icon2': Icons.delete_outlined,
    'icon3': Icons.more_horiz,
  },
  {
    'to/from': 'John Doe',
    'avatar': 'JD',
    'date': '30 oct 2023',
    'description': 'Monthly Salary',
    'amount': '\$8,500.0',
    'status': 'Success',
    'statuscolor': Colors.green,
    'icon1': Icons.link_outlined,
    'icon2': Icons.delete_outlined,
    'icon3': Icons.more_horiz,
  },
];
