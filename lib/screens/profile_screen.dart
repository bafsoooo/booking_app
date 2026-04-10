import 'package:booking_app/screens/informations_personel_screen.dart';
import 'package:booking_app/widgets/page_item.dart';
import 'package:booking_app/widgets/tag.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        body: SingleChildScrollView(
          child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [ 
                  // Background image 
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/background.jpg"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  // avatar
                    Positioned(
                    bottom: -45,
                    left: 20,
                    child: CircleAvatar(
                      radius: 54, // slightly larger for border
                      backgroundColor: Colors.white, // border color
                      child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/avatar.jpg"),
                      ),
                    ),
                    )
                ]
              ),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "John Doe",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Row(
                      children: [
                        Icon(Icons.location_on_outlined, color: Color.fromARGB(255,76,77, 220 ),),
                        Text(
                          "Alger, Algeria",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey
                          ),
                        ),
                      ],
                    ),
                    // "Mon Travel Style" section
                    const SizedBox(height: 20,),
                    const Row(
                      spacing: 10,
                      children: [
                        Icon(Icons.rocket_launch_outlined, color: Colors.deepOrangeAccent, size: 25,),
                        Text("Mon Travel Style", style: TextStyle(fontSize: 25, color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    const SizedBox(height: 20,),
                    // Travel style tags
                    Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: [
                        Tag(text: "Adventure"),
                        Tag(text: "Culture"),
                        Tag(text: "Relaxation"),
                        Tag(text: "Foodie"),
                        Tag(text: "Nature"),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    //pages section
                    PageItem(text: "Informations Personnel", icon: Icons.person_outline, page: InformationsPersonelScreen(),),
                    PageItem(text: "Destinations Sauvegarder", icon: Icons.bookmark_outline,page: InformationsPersonelScreen()),
                    PageItem(text: "Historique Des Destinations ", icon: Icons.history_outlined,page: InformationsPersonelScreen()),
                    PageItem(text: "Notifications Settings", icon: Icons.notifications_none_outlined,page: InformationsPersonelScreen()),

                    // "Destination A venir" section
                    const SizedBox(height: 30,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      spacing: 10,
                      children: [
                        Icon(Icons.rocket_launch_outlined, color: Colors.deepOrangeAccent, size: 25,),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Destination A venir",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold , color: Colors.deepOrangeAccent),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Text("Voir Calendrier", style: TextStyle(fontSize: 14, color: Colors.deepOrangeAccent),)
                      ],
                    ),
                    const SizedBox(height: 20,),
                    // Destination cards
                    const Placeholder(),
                    const SizedBox(height: 20,),
                    // More section
                    Text("More" , style: TextStyle(fontSize: 18, color: Colors.deepOrangeAccent),),
                    const SizedBox(height: 20,),
                    // Language and logout options
                    PageItem(text: "Language", icon: Icons.language_outlined,page: InformationsPersonelScreen()),
                    PageItem(text: "Logout", icon: Icons.logout_outlined, color: Colors.red,page: InformationsPersonelScreen()),
                  ]),
              )
            ],
          ),
        )
      )
    );
  }
}