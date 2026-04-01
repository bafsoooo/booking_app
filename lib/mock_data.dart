import 'package:flutter/material.dart';

class Hotel {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final double rating;
  final int reviewCount;
  final String location;
  final List<String> tags;

  Hotel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.rating,
    required this.reviewCount,
    required this.location,
    required this.tags,
  });
}

class Review {
  final String id;
  final String hotelId;
  final String userName;
  final double rating;
  final String comment;
  final DateTime date;

  Review({
    required this.id,
    required this.hotelId,
    required this.userName,
    required this.rating,
    required this.comment,
    required this.date,
  });
}

// Sample data for Pour Vous section
final List<Hotel> mockPourVousHotels = [
  Hotel(
    id: '1',
    name: 'Hotel Hyatt Regency',
    imageUrl: 'https://imgs.search.brave.com/-lJNQ7RKfYdkWI01qR_5yZXzDHcFnV9U3-d88767u0E/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAwLzQ4LzA1LzY3/LzM2MF9GXzQ4MDU2/NzcyXzR4ekdRZXJS/N2xXODJ6N01QVE44/QXVsTXJhTklPWkVK/LmpwZw',
    price: 7500,
    rating: 4.2,
    reviewCount: 44,
    location: 'Alger centre, aéroport',
    tags: ['Plage', 'Gastronomie'],
  ),
  Hotel(
    id: '2',
    name: 'El Aurassi Hotel',
    imageUrl: 'https://imgs.search.brave.com/-lJNQ7RKfYdkWI01qR_5yZXzDHcFnV9U3-d88767u0E/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAwLzQ4LzA1LzY3/LzM2MF9GXzQ4MDU2/NzcyXzR4ekdRZXJS/N2xXODJ6N01QVE44/QXVsTXJhTklPWkVK/LmpwZw',
    price: 6800,
    rating: 4.0,
    reviewCount: 38,
    location: 'Alger Centre',
    tags: ['Vue sur mer', 'Centre ville'],
  ),
  Hotel(
    id: '3',
    name: 'Sheraton Club des Pins',
    imageUrl: 'https://imgs.search.brave.com/-lJNQ7RKfYdkWI01qR_5yZXzDHcFnV9U3-d88767u0E/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAwLzQ4LzA1LzY3/LzM2MF9GXzQ4MDU2/NzcyXzR4ekdRZXJS/N2xXODJ6N01QVE44/QXVsTXJhTklPWkVK/LmpwZw',
    price: 8200,
    rating: 4.5,
    reviewCount: 52,
    location: 'Club des Pins',
    tags: ['Familial', 'Piscine'],
  ),
  Hotel(
    id: '4',
    name: 'Ibis Alger Aéroport',
    imageUrl: 'https://imgs.search.brave.com/-lJNQ7RKfYdkWI01qR_5yZXzDHcFnV9U3-d88767u0E/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAwLzQ4LzA1LzY3/LzM2MF9GXzQ4MDU2/NzcyXzR4ekdRZXJS/N2xXODJ6N01QVE44/QXVsTXJhTklPWkVK/LmpwZw',
    price: 5500,
    rating: 3.8,
    reviewCount: 29,
    location: 'Aéroport d Alger',
    tags: ['Business', 'Navette aéroport'],
  ),
];

// Sample data for Destinations Tendance section
final List<Hotel> mockDestinationHotels = [
  Hotel(
    id: '5',
    name: 'Hotel Mercure Oran',
    imageUrl: 'https://imgs.search.brave.com/-lJNQ7RKfYdkWI01qR_5yZXzDHcFnV9U3-d88767u0E/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAwLzQ4LzA1LzY3/LzM2MF9GXzQ4MDU2/NzcyXzR4ekdRZXJS/N2xXODJ6N01QVE44/QXVsTXJhTklPWkVK/LmpwZw',
    price: 7200,
    rating: 4.1,
    reviewCount: 41,
    location: 'Oran Ville Nouvelle',
    tags: ['Plage', 'Vie nocturne'],
  ),
  Hotel(
    id: '6',
    name: 'Constantine Palace Hotel',
    imageUrl: 'https://imgs.search.brave.com/-lJNQ7RKfYdkWI01qR_5yZXzDHcFnV9U3-d88767u0E/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAwLzQ4LzA1LzY3/LzM2MF9GXzQ4MDU2/NzcyXzR4ekdRZXJS/N2xXODJ6N01QVE44/QXVsTXJhTklPWkVK/LmpwZw',
    price: 6900,
    rating: 4.3,
    reviewCount: 35,
    location: 'Constantine Ville',
    tags: ['Ponts historiques', 'Gastronomie'],
  ),
  Hotel(
    id: '7',
    name: 'Annaba Beach Resort',
    imageUrl: 'https://imgs.search.brave.com/-lJNQ7RKfYdkWI01qR_5yZXzDHcFnV9U3-d88767u0E/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAwLzQ4LzA1LzY3/LzM2MF9GXzQ4MDU2/NzcyXzR4ekdRZXJS/N2xXODJ6N01QVE44/QXVsTXJhTklPWkVK/LmpwZw',
    price: 7800,
    rating: 4.4,
    reviewCount: 47,
    location: 'Annaba Plage',
    tags: ['Plage', 'Familial'],
  ),
  Hotel(
    id: '8',
    name: 'Tizi Ouzou Mountain Lodge',
    imageUrl: 'https://imgs.search.brave.com/-lJNQ7RKfYdkWI01qR_5yZXzDHcFnV9U3-d88767u0E/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAwLzQ4LzA1LzY3/LzM2MF9GXzQ4MDU2/NzcyXzR4ekdRZXJS/N2xXODJ6N01QVE44/QXVsTXJhTklPWkVK/LmpwZw',
    price: 6200,
    rating: 4.0,
    reviewCount: 32,
    location: 'Tizi Ouzou',
    tags: ['Montagne', 'Randonnée'],
  ),
];

// Sample reviews data
final List<Review> mockReviews = [
  Review(
    id: 'r1',
    hotelId: '1',
    userName: 'Ahmed Benali',
    rating: 5.0,
    comment: 'Excellent service et vue magnifique sur la mer.',
    date: DateTime.now().subtract(const Duration(days: 2)),
  ),
  Review(
    id: 'r2',
    hotelId: '1',
    userName: 'Fatima Zahra',
    rating: 4.5,
    comment: 'Chambres spacieuses et petit déjeuner varié.',
    date: DateTime.now().subtract(const Duration(days: 5)),
  ),
  Review(
    id: 'r3',
    hotelId: '2',
    userName: 'Karim Djebbar',
    rating: 4.0,
    comment: 'Bon emplacement mais besoin de rénovation.',
    date: DateTime.now().subtract(const Duration(days: 3)),
  ),
  Review(
    id: 'r4',
    hotelId: '3',
    userName: 'Nadia Soufi',
    rating: 5.0,
    comment: 'Parfait pour des vacances en famille.',
    date: DateTime.now().subtract(const Duration(days: 7)),
  ),
  Review(
    id: 'r5',
    hotelId: '4',
    userName: 'Yacine Temmar',
    rating: 3.5,
    comment: 'Pratique pour les vols tôt le matin.',
    date: DateTime.now().subtract(const Duration(days: 1)),
  ),
];