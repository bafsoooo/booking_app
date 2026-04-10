import 'package:flutter/material.dart';

class PageItem extends StatelessWidget {
  const PageItem({super.key, required this.text, required this.icon, this.color, required this.page});

  final String text;
  final IconData icon;
  final Widget page;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 16,
        children: [
          Icon(icon, size: 20, color: color ?? Colors.indigoAccent),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                text,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold , color: color ?? Colors.black),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          GestureDetector(
            child: Icon(Icons.arrow_forward_ios_outlined, size: 16, color: color ?? Colors.indigoAccent),
            onTap: () {
              // Handle navigation or action here
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => page),
              );
            },
          )
            
        ],
      ),
    );
  }
}