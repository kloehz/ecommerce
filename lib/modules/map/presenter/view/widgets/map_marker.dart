import 'package:latlong2/latlong.dart';

class MapMarker {
  final String? image;
  final String? title;
  final String? address;
  final LatLng? location;
  final int? rating;

  MapMarker({
    required this.image,
    required this.title,
    required this.address,
    required this.location,
    required this.rating,
  });
}

final mapMarkers = [
  MapMarker(
      image: 'assets/map/map-marker.png',
      title: 'Alexander The Great Restaurant',
      address: '8 Plender St, London NW1 0JT, United Kingdom',
      location: const LatLng(-33.8861705, -60.5755911),
      rating: 4),
  MapMarker(
      image: 'assets/map/map-marker.png',
      title: 'Mestizo Mexican Restaurant',
      address: '103 Hampstead Rd, London NW1 3EL, United Kingdom',
      location: const LatLng(-33.9063289, -60.5865362),
      rating: 5),
  MapMarker(
      image: 'assets/map/map-marker.png',
      title: 'The Shed',
      address: '122 Palace Gardens Terrace, London W8 4RT, United Kingdom',
      location: const LatLng(-33.8861705, -60.5755911),
      rating: 2),
  MapMarker(
      image: 'assets/map/map-marker.png',
      title: 'Gaucho Tower Bridge',
      address: '2 More London Riverside, London SE1 2AP, United Kingdom',
      location: const LatLng(-33.8861705, -60.5755911),
      rating: 3),
  MapMarker(
    image: 'assets/map/map-marker.png',
    title: 'Bill\'s Holborn Restaurant',
    address: '42 Kingsway, London WC2B 6EY, United Kingdom',
    location: const LatLng(-33.8861705, -60.5755911),
    rating: 4,
  ),
];
