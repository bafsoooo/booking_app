import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Offre extends StatelessWidget {
  const Offre({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        height: 140,
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: "https://www.state.gov/wp-content/uploads/2019/04/shutterstock_1105071320v2-2157x1406.jpg",
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}