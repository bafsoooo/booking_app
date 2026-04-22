import 'package:booking_app/utils/dot_indicator.dart';
import 'package:booking_app/widgets/destination.dart';
import 'package:booking_app/widgets/pour_vous.dart';
import 'package:booking_app/mock_data.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget{
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;

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
                   Column(
                     children:[ 
                       CarouselSlider.builder(
                         itemCount: mockPourVousHotels.length,
                         options: CarouselOptions(
                           height: 370,
                           aspectRatio: 16/9,
                           viewportFraction: 0.8, // How much space the card takes up
                           initialPage: 0,
                           enableInfiniteScroll: true, // Loops forever
                           reverse: false,
                           autoPlay: true, // Swipes automatically
                           autoPlayInterval: const Duration(seconds: 3),
                           scrollDirection: Axis.horizontal,
                           onPageChanged: (index, reason) => 
                           setState(() {
                             activeIndex = index;
                           }),
                         ),
                         itemBuilder: (BuildContext context, int index, int realIndex) {
                           return PourVous(hotel: mockPourVousHotels[index]);
                         },
                       ),
                       const SizedBox(height: 24,),
                       DotIndicator(activeIndex: activeIndex)
                     ]
                   ),
                  SizedBox(
                    height: 20,
                  ),
                  // Destinations Tendance section
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      const Text(
                        "Destinations Tendance",
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
                   Column(
                     children:[ 
                       CarouselSlider.builder(
                         itemCount: mockDestinationHotels.length,
                         options: CarouselOptions(
                           height: 400,
                           aspectRatio: 16/9,
                           viewportFraction: 0.8, // How much space the card takes up
                           initialPage: 0,
                           enableInfiniteScroll: true, // Loops forever
                           reverse: false,
                           autoPlay: true, // Swipes automatically
                           autoPlayInterval: const Duration(seconds: 3),
                           scrollDirection: Axis.horizontal,
                           onPageChanged: (index, reason) => 
                           setState(() {
                             activeIndex = index;
                           }),
                         ),
                         itemBuilder: (BuildContext context, int index, int realIndex) {
                           return Destination(
                             hotel: mockDestinationHotels[index]
                           );
                         },
                       ),
                       const SizedBox(height: 24,),
                       DotIndicator(activeIndex: activeIndex)
                     ]
                   ),
                  SizedBox(
                    height: 20,
                  ),
                  // Destinations Tendance section
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      const Text(
                        "Offres Spéciales",
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
                ],
              ),
               
            )
          ],
        ),
      ),
    );
  }
}