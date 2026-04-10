import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';

class ExploreScreen extends StatefulWidget{
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {

  final MapController _mapController = MapController();
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: LatLng(36.75, 3.04),
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
        onPressed: () {
          _mapController.move(LatLng(36.75, 3.04), 13.0);
        },
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

