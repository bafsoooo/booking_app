import 'package:flutter/material.dart';

class InformationField extends StatelessWidget {
  const InformationField({super.key, required this.label, required this.hintText, this.icon});

  final String label;
  final String hintText;
  final IconData? icon;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 5,
        children: [
          Text(label, style: TextStyle(fontSize: 16, color: Colors.grey[600])),
          TextField(
            decoration: InputDecoration(
              prefixIcon: icon != null ? Icon(icon) : null,
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              hintText: hintText,
            ),
          ),
        ],
      ),
    );
  }
}