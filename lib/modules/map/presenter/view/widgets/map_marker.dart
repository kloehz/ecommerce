import 'package:latlong2/latlong.dart';

class MapMarker {
  final int id;
  final String? image;
  final String title;
  final String address;
  final String? category;
  final LatLng location;
  final int? rating;

  MapMarker({
    required this.id,
    required this.image,
    required this.title,
    required this.address,
    required this.category,
    required this.location,
    required this.rating,
  });
}

final mapMarkers = [
  MapMarker(
      id: 1,
      image:
          'https://i.ibb.co/MZgDtqx/303178767-501430831985703-743131834223836120-n.jpg',
      title: 'Marcelo GNC',
      category: 'N/A',
      address: 'Estrada 2018',
      location: const LatLng(-33.9063289, -60.5865362),
      rating: 4),
  MapMarker(
      id: 2,
      image:
          'https://i.ibb.co/Nj8fdbn/20431637-10155381195540734-7555346973007001347-n.jpg',
      title: 'PC Shop',
      category: 'N/A',
      address: 'Pueyrredon 599',
      location: const LatLng(-33.893892, -60.5752984),
      rating: 5),
  MapMarker(
      id: 3,
      image:
          'https://i.ibb.co/G9T1tz6/306948483-141802145216539-8211489437782074841-n.jpg',
      title: 'El hornito santiagueño',
      category: 'N/A',
      address: 'San Martin 656',
      location: const LatLng(-33.8960207, -60.5770274),
      rating: 2),
  MapMarker(
      id: 4,
      image:
          'https://i.ibb.co/JR8W2ph/302426655-782532613114394-2856161589490343967-n.jpg',
      title: 'Calzados pedrito',
      category: 'N/A',
      address: 'Av. de mayo 552',
      location: const LatLng(-33.8933622, -60.5767217),
      rating: 3),
  MapMarker(
    id: 5,
    image:
        'https://i.ibb.co/714KjBG/345569242-178920545105857-30804218646237185-n.jpg',
    title: 'Artos Bakery',
    category: 'N/A',
    address: 'Av. de mayo 143',
    location: const LatLng(-33.8944983, -60.5700296),
    rating: 4,
  ),
  MapMarker(
    id: 6,
    image: 'https://i.ibb.co/8BP35kN/2020-06-12.png',
    title: 'Amelie Café',
    category: 'N/A',
    address: 'San Nicolas 502',
    location: const LatLng(-33.8940414, -60.5753688),
    rating: 4,
  ),
];
