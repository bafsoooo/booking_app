import 'package:booking_app/widgets/pour_vous.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            Container(
              padding: EdgeInsets.all(16),
              color: Color.fromARGB(255, 73, 92, 245),
              child: SizedBox(
                height: 200,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Bienvenue,Amine",style:TextStyle(color: Colors.white, fontWeight:FontWeight.bold , fontSize: 16)),
                            SizedBox(height: 9,),
                            Row(
                              children: [
                                Text("Current Location",style:TextStyle(color: Color.fromARGB(136, 255, 255, 255))),
                                Icon(Icons.arrow_drop_down,color: Colors.white)
                              ],
                            ),
                            Text("Boumerdas, DZ",style:TextStyle(color: Colors.white) ,),
                          ],
                        ),
                        Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                    SizedBox(height: 30,),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none, 
                        ),
                        hintText: 'Recherchez un hôtel, un transport ou ...',
                        hintStyle:TextStyle(
                          color: Color.fromARGB(100, 0, 0, 0),
                          overflow: TextOverflow.ellipsis,
                          fontSize: 14
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color.fromARGB(100, 0, 0, 0)
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
            // Pour vous section
            ,
            Padding(
              padding: const EdgeInsetsGeometry.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      const Text(
                        "Pour Vous",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                      Text(
                        "See All >",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 300, 
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return PourVous(price: 7500, hotelName: "Hotel hyatt regency", location: "Alger centre , aireport");
                      },
                    ),
                  ),
                ],
              ),
               
            )
          ],
        ),
      ),
    );
  }
}