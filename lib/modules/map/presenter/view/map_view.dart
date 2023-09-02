import 'package:ecommerce/constants/mapbox.dart';
import 'package:ecommerce/modules/map/presenter/view/widgets/map_marker.dart';
import 'package:ecommerce/modules/map/presenter/view/widgets/marker_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';

class MapView extends StatefulWidget {
  const MapView({super.key});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              minZoom: 5,
              maxZoom: 18,
              zoom: 13,
              center: MapboxConstants.myLocation,
            ),
            children: [
              TileLayer(
                urlTemplate:
                    "https://api.mapbox.com/styles/v1/copixx/{mapStyleId}/tiles/256/{z}/{x}/{y}@2x?access_token={accessToken}",
                additionalOptions: {
                  'mapStyleId': MapboxConstants.styleToken,
                  'accessToken': MapboxConstants.accessToken,
                },
              ),
              MarkerLayer(
                markers: [
                  for (int i = 0; i < mapMarkers.length; i++)
                    Marker(
                      height: 40,
                      width: 40,
                      point: mapMarkers[i].location,
                      builder: (_) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = mapMarkers[i].id;
                            });
                          },
                          child: Image.asset(
                            'assets/images/map/map-marker.png',
                          ),
                        );
                      },
                    ),
                ],
              ),
            ],
          ),
          MarkerDescription(selectedIndex: selectedIndex),
        ],
      ),
    );
  }
}
