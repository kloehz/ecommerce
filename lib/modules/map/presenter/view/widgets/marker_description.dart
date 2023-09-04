import 'package:ecommerce/modules/map/presenter/view/widgets/map_marker.dart';
import 'package:ecommerce/utils/shared_utils.dart';
import 'package:flutter/material.dart';

const double BOTTOM_POSITION = 105;

class MarkerDescription extends StatefulWidget {
  final MapMarkerModel? mapMarker;
  const MarkerDescription({super.key, required this.mapMarker});

  @override
  State<MarkerDescription> createState() => _MarkerDescriptionState();
}

class _MarkerDescriptionState extends State<MarkerDescription> {
  int? previousId;
  MapMarkerModel? currentMapMarker;

  @override
  Widget build(BuildContext context) {
    final width = context.width - 24;
    double bottomPosition =
        previousId != widget.mapMarker?.id ? -BOTTOM_POSITION : BOTTOM_POSITION;

    if (previousId != widget.mapMarker?.id) {
      Future.delayed(
          const Duration(milliseconds: 250),
          () => {
                setState(() => {
                      previousId = widget.mapMarker?.id,
                      currentMapMarker = widget.mapMarker
                    })
              });
    }

    if (currentMapMarker == null) return Container();

    return AnimatedPositioned(
      duration: const Duration(milliseconds: 250),
      left: 0,
      bottom: bottomPosition,
      curve: Curves.fastOutSlowIn,
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          width: width,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(currentMapMarker!.image!),
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      currentMapMarker!.title,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(currentMapMarker!.category ?? 'N/A'),
                    Text(currentMapMarker!.address),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
