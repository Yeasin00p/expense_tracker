import 'package:flutter/material.dart';

class TextFromFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final IconData iconData;
  final double borderRadius;

  const TextFromFieldWidget({
    super.key,
    required this.controller,
    required this.iconData,
    this.borderRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(
          iconData,
          size: 16,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
