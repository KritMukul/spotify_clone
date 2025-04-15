import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(decoration: InputDecoration(hintText: 'Name'));
    
  }
}
