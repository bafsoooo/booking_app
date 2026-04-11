import 'package:flutter/material.dart';

class NotificationsSetting extends StatelessWidget {
  const NotificationsSetting({super.key, required this.title, required this.description, this.isEnabled = true});

  final String title ;
  final String description ;
  final bool? isEnabled ;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Switch(
          value: isEnabled ?? false, 
          activeTrackColor: Colors.deepOrangeAccent,
          inactiveTrackColor: Colors.white,
          inactiveThumbColor: Colors.grey[200],
          
          onChanged: (value) {
            // Handle switch state change
          },
        ),
        SizedBox(width: 8,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
                softWrap: true,
              ),
            ],
          ),
        ),
        
      ],
    );
  }
}