import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

class ExploreScreen extends StatefulWidget{
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {

  final MapController _mapController = MapController();
  final Location _locationService = Location();
  final TextEditingController _searchController = TextEditingController();
  bool isLoading = false;
  LatLng? _currentLocation;
  LatLng? _destinationLocation;
  List<LatLng> _routePoints = [];

  @override
  void initState() {
    super.initState();
    _initializeLocationService();
  }
  Future<void> _initializeLocationService() async {
    setState(() => isLoading = true);
    try {
      final permissionGranted = await _locationService.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Location permission denied. Please grant permission to use this feature."))
        );
        return;
      }
      final locationData = await _locationService.getLocation();
      setState(() => _currentLocation = LatLng(locationData.latitude!, locationData.longitude!));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error getting location: $e"))
      );
    } finally {
      setState(() => isLoading = false);
    }
  }

  Future<void> _getCurrentLocation() async {
    if (_currentLocation != null) {
      _mapController.move(_currentLocation!, 13.0);
    }else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Unable to get current location. Please try again."))
      );
    };
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: _currentLocation ?? LatLng(36.75, 3.04),
              initialZoom: 13.0,
              minZoom: 0,
              maxZoom: 100
            ),
            children:  [
              TileLayer(
                urlTemplate: 'https://api.maptiler.com/maps/streets/{z}/{x}/{y}.png?key=No0nILaIuij7cZCZAYbX',
                userAgentPackageName: 'com.example.booking_app',
              ),
              CurrentLocationLayer(
                style: const LocationMarkerStyle(
                  marker: DefaultLocationMarker(
                    color: Color.fromARGB(255, 73, 92, 245),
                    child: Icon(Icons.my_location, color: Colors.white, size: 20,),
                  ),
                  markerSize:  Size(40, 40),
                  markerDirection: MarkerDirection.heading
                ),
              )
            ])
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed:_getCurrentLocation,
        backgroundColor: Color.fromARGB(255, 73, 92, 245),
        foregroundColor: Colors.white,
        child:const Icon(
          Icons.my_location,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}

