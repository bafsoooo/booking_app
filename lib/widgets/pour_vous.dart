import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PourVous extends StatelessWidget {
  const PourVous({super.key, required this.price, required this.hotelName, required this.location});

  final int price ;
  final String hotelName;
  final String location;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,
      height: 240,
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6))
        ),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  CachedNetworkImage(
                    width: double.maxFinite,
                    imageUrl: "https://imgs.search.brave.com/-lJNQ7RKfYdkWI01qR_5yZXzDHcFnV9U3-d88767u0E/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAwLzQ4LzA1LzY3/LzM2MF9GXzQ4MDU2/NzcyXzR4ekdRZXJS/N2xXODJ6N01QVE44/QXVsTXJhTklPWkVK/LmpwZw",
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    right: 14,
                    top: 14,
                    child: Icon(
                      Icons.bookmark_border_outlined,
                      color: Colors.white,
                    ),
                  )
                ]
              )
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(vertical: 16 , horizontal: 20) ,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "DZD $price",
                      style: TextStyle(
                        fontWeight: FontWeight.bold 
                      ),
                    ),
                    Text(
                      hotelName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold ,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      
                      children: [
                        RatingBar.builder(
                          onRatingUpdate: (rating){print(rating);},
                          minRating: 1,
                          initialRating: 4,
                          allowHalfRating: true, 
                          itemSize: 20,
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) => 
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          )
                        ),
                        Text("4.2",style: TextStyle(color:Color.fromARGB(255, 101, 101, 101) ),),
                        SizedBox(width: 10,),
                        Text("44 reviews",style: TextStyle(color:Color.fromARGB(255, 101, 101, 101) ))
                      ],
                    ),
                    Row(
                      spacing: 3,
                      children: [
                        Icon(Icons.location_on_outlined , color:Color.fromARGB(255, 101, 101, 101),),
                        Text(location,style: TextStyle(color:Color.fromARGB(255, 101, 101, 101) ))
                      ],
                    ),
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}