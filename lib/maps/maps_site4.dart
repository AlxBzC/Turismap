import 'dart:async';
import 'package:fluentui_icons/fluentui_icons.dart';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MyApp4());

class MyApp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sitios Turisticos de Popayan',
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(2.441637570003029, -76.60686971311202),
    zoom: 19.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(2.441637570003029, -76.60686971311202),
      tilt: 59.440717697143555,
      zoom: 24.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),

      floatingActionButton: FloatingActionButton.extended(

        backgroundColor: Colors.indigo,
        onPressed: _goToTheLake,
        label: Text('Acercar!'),
        icon: Icon(FluentSystemIcons.ic_fluent_arrow_maximize_regular),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}