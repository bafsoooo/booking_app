import 'package:booking_app/widgets/information_field.dart';
import 'package:flutter/material.dart';

class InformationsPersonelScreen extends StatelessWidget {
  const InformationsPersonelScreen({super.key});

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
          "Informations Personnel",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: Color.fromARGB(255,73,92,245),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Informations",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 20,),
              InformationField(label: "first name", hintText: "Enter your first name", ),
              const SizedBox(height: 20,),
              InformationField(label: "last name", hintText: "Enter your last name", ),
              const SizedBox(height: 20,),
              InformationField(label: "Email", hintText: "Enter your email",icon: Icons.email, ),
              const SizedBox(height: 20,),
              InformationField(label: "phone number", hintText: "Enter your phone number",icon: Icons.phone, ),
              const SizedBox(height: 20,),
              InformationField(label: "wilaya", hintText: "Enter your wilaya", icon: Icons.location_on_outlined, ),
              const SizedBox(height: 20,),
              InformationField(label: "ID card", hintText: "Enter your ID card number", ),
              const SizedBox(height: 20,),
              Text(
                "Details De Payement",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 20,),
              InformationField(label: "Card Name", hintText: "Enter your card name", icon: Icons.person_outline, ),
              const SizedBox(height: 20,),
              InformationField(label: "Card Number", hintText: "**** **** **** ****", icon: Icons.credit_card, ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: InformationField(label: "Expiration Date", hintText: "MM/YY", icon: Icons.calendar_today, )),
                  const SizedBox(width: 16,),
                  Expanded(child: InformationField(label: "CVV", hintText: "***", icon: Icons.lock_outline, )),
                ],
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}