import 'package:artabasco/app/modules/google_maps.dart/widgets/map_style.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleController extends GetxController {
  Map<MarkerId, Marker> _markers = {};
  Set<Marker> get markers => _markers.values.toSet();
  final initialCameraPosition = const CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(18.1617526, -92.7852966),
    tilt: 59.440717697143555,
    zoom: 15,
  );
  void onMapCreated(GoogleMapController controller) {
    controller.setMapStyle(mapStyle);
  }
}
