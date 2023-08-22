import 'package:ecommerce/constants/envs_enum.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:latlong2/latlong.dart';

class MapboxConstants {
  static final String accessToken = dotenv.env[EnvsEnum.mapboxKey]!;
  static final String styleToken = dotenv.env[EnvsEnum.mapboxStyleKey]!;

  static const myLocation = LatLng(-33.8861705, -60.5755911);
}
