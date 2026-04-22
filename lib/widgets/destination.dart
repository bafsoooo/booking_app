import 'package:booking_app/provider/favorite_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../mock_data.dart';

class Destination extends StatelessWidget {
  final Hotel hotel;
  const Destination({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);

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
                    imageUrl: hotel.imageUrl,
                    fit: BoxFit.cover,
                  ),
                  GestureDetector(
                    onTap: () {
                      provider.toggleFavorite(hotel);
                    },
                    child: Positioned(
                      right: 14,
                      top: 14,
                      child: Icon(
                        provider.isExist(hotel) ? Icons.bookmark : Icons.bookmark_border_outlined,
                        color:Colors.white,
                      ),
                    ),
                  )
                ]
              )
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "DZD ${hotel.price.toInt()}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold 
                      ),
                    ),
                    Text(
                      hotel.name,
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
                          initialRating: hotel.rating,
                          allowHalfRating: true, 
                          itemSize: 20,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) => 
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          )
                        ),
                        Text("${hotel.rating}",style: TextStyle(color:Color.fromARGB(255, 101, 101, 101) ),),
                        SizedBox(width: 10,),
                        Text("${hotel.reviewCount} reviews",style: TextStyle(color:Color.fromARGB(255, 101, 101, 101) ))
                      ],
                    ),
                    Row(
                      spacing: 3,
                      children: [
                        Icon(Icons.location_on_outlined , color:Color.fromARGB(255, 101, 101, 101),),
                        Text(hotel.location,style: TextStyle(color:Color.fromARGB(255, 101, 101, 101) ))
                      ],
                    ),
                    Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: hotel.tags.map((tag) => Container(
                        padding: EdgeInsets.symmetric(vertical: 4 , horizontal: 12),
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: Text(
                          tag,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[700]
                          ),
                        ),
                      )).toList(),
                    )
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