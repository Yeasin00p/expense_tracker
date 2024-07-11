import 'package:flutter/material.dart';

TextStyle headerTextStyle(BuildContext context) {
  return TextStyle(
    color: Theme.of(context).colorScheme.onBackground,
    fontSize: 18,
    fontWeight: FontWeight.w800,
  );
}

TextStyle lighterTextStyle(BuildContext context) {
  return TextStyle(
    color: Theme.of(context).colorScheme.outline,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );
}
