import 'package:artabasco/app/core/utils/responsive.dart';
import 'package:artabasco/app/modules/google_maps.dart/google_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleView extends StatefulWidget {
  const GoogleView({Key key}) : super(key: key);

  @override
  _GoogleViewState createState() => _GoogleViewState();
}

class _GoogleViewState extends State<GoogleView> {
  final _controller = GoogleController();
  final _initialCameraPosition = const CameraPosition(
    target: LatLng(18.1617526, -92.7852966),
    zoom: 15,
  );
  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Ubicación',
            style: GoogleFonts.rubik(
              fontSize: responsive.dp(1.6),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: responsive.hp(2),
        ),
        Container(
          height: responsive.hp(50),
          width: responsive.wp(100),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.transparent,
          ),
          child: GoogleMap(
            onMapCreated: _controller.onMapCreated,
            zoomControlsEnabled: true,
            zoomGesturesEnabled: true,
            compassEnabled: true,
            buildingsEnabled: true,
            initialCameraPosition: _initialCameraPosition,
          ),
        ),
      ],
    );
  }
}
