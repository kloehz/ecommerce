import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';

const double SELECTED_SIZE = 40;
const double UNSELECTED_SIZE = 30;

class MapMarkerModel {
  final int id;
  final String? image;
  final String title;
  final String address;
  final String? category;
  final LatLng location;
  final int? rating;

  MapMarkerModel({
    required this.id,
    required this.image,
    required this.title,
    required this.address,
    required this.category,
    required this.location,
    required this.rating,
  });
}

class MapMarker extends StatefulWidget {
  final Function(MapMarkerModel id) setMarkerSelected;
  final MapMarkerModel? selectedMapMarker;
  const MapMarker(
      {super.key, required this.setMarkerSelected, this.selectedMapMarker});

  @override
  State<MapMarker> createState() => _MapMarkerState();
}

class _MapMarkerState extends State<MapMarker> {
  @override
  Widget build(BuildContext context) {
    return MarkerLayer(
      markers: [
        for (int i = 0; i < mapMarkers.length; i++)
          Marker(
            height: SELECTED_SIZE,
            width: SELECTED_SIZE,
            point: mapMarkers[i].location,
            builder: (_) {
              return GestureDetector(
                onTap: () {
                  setState(() => widget.setMarkerSelected(mapMarkers[i]));
                },
                child: _AnimatedMarker(
                    isSelected:
                        mapMarkers[i].id == widget.selectedMapMarker?.id),
              );
            },
          ),
      ],
    );
  }
}

class _AnimatedMarker extends StatelessWidget {
  final bool isSelected;
  const _AnimatedMarker({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final size = isSelected ? SELECTED_SIZE : UNSELECTED_SIZE;
    return Center(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: size,
        width: size,
        child: Image.asset(
          'assets/images/map/map-marker.png',
        ),
      ),
    );
  }
}

final mapMarkers = [
  MapMarkerModel(
      id: 1,
      image:
          'https://i.ibb.co/MZgDtqx/303178767-501430831985703-743131834223836120-n.jpg',
      title: 'Marcelo GNC',
      category: 'N/A',
      address: 'Estrada 2018',
      location: const LatLng(-33.9063289, -60.5865362),
      rating: 4),
  MapMarkerModel(
      id: 2,
      image:
          'https://i.ibb.co/Nj8fdbn/20431637-10155381195540734-7555346973007001347-n.jpg',
      title: 'PC Shop',
      category: 'N/A',
      address: 'Pueyrredon 599',
      location: const LatLng(-33.893892, -60.5752984),
      rating: 5),
  MapMarkerModel(
      id: 3,
      image:
          'https://i.ibb.co/G9T1tz6/306948483-141802145216539-8211489437782074841-n.jpg',
      title: 'El hornito santiagueño',
      category: 'N/A',
      address: 'San Martin 656',
      location: const LatLng(-33.8960207, -60.5770274),
      rating: 2),
  MapMarkerModel(
      id: 4,
      image:
          'https://i.ibb.co/JR8W2ph/302426655-782532613114394-2856161589490343967-n.jpg',
      title: 'Calzados pedrito',
      category: 'N/A',
      address: 'Av. de mayo 552',
      location: const LatLng(-33.8933622, -60.5767217),
      rating: 3),
  MapMarkerModel(
    id: 5,
    image:
        'https://i.ibb.co/714KjBG/345569242-178920545105857-30804218646237185-n.jpg',
    title: 'Artos Bakery',
    category: 'N/A',
    address: 'Av. de mayo 143',
    location: const LatLng(-33.8944983, -60.5700296),
    rating: 4,
  ),
  MapMarkerModel(
    id: 6,
    image: 'https://i.ibb.co/8BP35kN/2020-06-12.png',
    title: 'Amelie Café',
    category: 'N/A',
    address: 'San Nicolas 502',
    location: const LatLng(-33.8940414, -60.5753688),
    rating: 4,
  ),
];
