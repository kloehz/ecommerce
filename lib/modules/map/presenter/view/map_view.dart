import 'package:ecommerce/constants/mapbox.dart';
import 'package:ecommerce/modules/map/presenter/view/widgets/map_marker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 33, 32, 32),
        title: const Text('Flutter MapBox'),
      ),
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
                      point:
                          mapMarkers[i].location ?? MapboxConstants.myLocation,
                      builder: (_) {
                        return GestureDetector(
                          onTap: () {},
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
        ],
      ),
    );
  }
}
