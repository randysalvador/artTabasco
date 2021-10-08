import 'package:artabasco/app/modules/google_maps.dart/google_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsView extends StatefulWidget {
  const GoogleMapsView({Key key}) : super(key: key);

  @override
  _GoogleMapsView createState() => _GoogleMapsView();
}

class _GoogleMapsView extends State<GoogleMapsView> {
  final _controller = GoogleController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tamulte de las Sabanas'),
        backgroundColor: Colors.grey.shade500,
        elevation: 0,
      ),
      body: GoogleMap(
//        onMapCreated: _controller.onMapCreated,
        initialCameraPosition: _controller.initialCameraPosition,
        markers: _controller.markers,
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        zoomGesturesEnabled: true,
        compassEnabled: true,
        myLocationEnabled: true,
      ),
    );
  }
}
