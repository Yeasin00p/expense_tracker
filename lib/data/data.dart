import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> myData = [
  {
    'icon': const FaIcon(
      FontAwesomeIcons.burger,
      color: Colors.white,
    ),
    'color': Colors.green,
    'name': 'Burger',
    'amount': 'BDT -70',
    'date': 'Today'
  },
  {
    'icon': const FaIcon(
      FontAwesomeIcons.bagShopping,
      color: Colors.white,
    ),
    'color': Colors.purple[300],
    'name': 'Shoping',
    'amount': 'BDT -200',
    'date': 'Today'
  },
  {
    'icon': const FaIcon(
      FontAwesomeIcons.heartCircleCheck,
      color: Colors.white,
    ),
    'color': Colors.red[300],
    'name': 'Health',
    'amount': 'BDT -2000',
    'date': 'Today'
  },
  {
    'icon': const FaIcon(
      FontAwesomeIcons.plane,
      color: Colors.white,
    ),
    'color': Colors.blue[300],
    'name': 'Trable',
    'amount': 'BDT -3000',
    'date': 'Today'
  },
];
