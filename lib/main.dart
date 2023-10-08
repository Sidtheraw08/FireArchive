// ignore_for_file: unnecessary_new, unused_import
import 'dart:async';
import 'dart:io';
import 'package:fire_archive/components/splashScreen.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:csv/csv.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fire_archive/components/NavBar.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:fire_archive/components/map_sample_state.dart';
void main() async {
  runApp(const MyApp());
  ();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // This removes the debug banner.
      theme: ThemeData(
          fontFamily: 'Poppins'), // This is the theme of your application.
      title: 'FireArchive', // This uis the title bar.
      home: const SplashScreen(), // This is the home page.
    );
  }
}

class MapSample extends StatefulWidget {
  const MapSample(
      {super.key}); // This is the constructor for the MapSample class.
      

  @override
  State<MapSample> createState() =>
      MapSampleState(); // This is the state of the MapSample class.
}
