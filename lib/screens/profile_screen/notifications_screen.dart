import 'package:booking_app/widgets/notifications_setting.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Notifications Settings",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: Color.fromARGB(255,73,92,245),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsGeometry.all(16),
          child: Column(
            children: [
              SizedBox(height: 20,),
              NotificationsSetting(title: "Booking Confirmations", description: "Notifications pour confirmer vos réservations (hôtel, transport, activités)."),
              SizedBox(height: 20,),
              NotificationsSetting(title: "Special Offers", description: "Restez informé des offres exclusives et réductions disponibles !" , isEnabled: false,),
              SizedBox(height: 20,),              
              NotificationsSetting(title: "Travel Reminders", description: "Rappels pour vos voyages : horaires, check-in, et activités."),
            ],
          ),
        ),
      ),
    );
  }
}