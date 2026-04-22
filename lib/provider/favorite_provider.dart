import 'package:booking_app/mock_data.dart';
import 'package:booking_app/widgets/destination.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteProvider extends ChangeNotifier{
  final List<Hotel> _favorites = [];
  List<Hotel> get favorites => _favorites;

  void toggleFavorite(Hotel hotel) {
    if (_favorites.contains(hotel)) {
      _favorites.remove(hotel);
    } else {
      _favorites.add(hotel);
    }
    notifyListeners();
  }

  bool isExist (Hotel hotel) {
    return _favorites.contains(hotel);
  }

  static FavoriteProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<FavoriteProvider>(context, listen: listen);
  }
}