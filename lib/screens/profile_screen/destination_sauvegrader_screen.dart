// here we will create a new screen for the saved destinations, which will be accessible from the profile screen. This screen will display a list of the user's saved destinations, allowing them to view and manage their saved places.

import 'package:booking_app/provider/favorite_provider.dart';
import 'package:flutter/material.dart';

class DestinationSauvegraderScreen extends StatefulWidget {
  const DestinationSauvegraderScreen({super.key});

  @override
  State<DestinationSauvegraderScreen> createState() => _State();
}

class _State extends State<DestinationSauvegraderScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final finalList = provider.favorites;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Destinations Sauvegarder",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: Color.fromARGB(255,73,92,245),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: provider.favorites.length ,
                itemBuilder: (context, index) {
                final favoriteItems = finalList[index];
                  return ListTile(
                    title: Text(favoriteItems.name),
                    subtitle: Text(favoriteItems.location),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        provider.toggleFavorite(favoriteItems);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}