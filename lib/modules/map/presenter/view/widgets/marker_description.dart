import 'package:ecommerce/modules/map/presenter/view/widgets/marker_inherited.dart';
import 'package:ecommerce/utils/shared_utils.dart';
import 'package:flutter/material.dart';

class MarkerDescription extends StatefulWidget {
  final int? selectedIndex;
  const MarkerDescription({super.key, required this.selectedIndex});

  @override
  State<MarkerDescription> createState() => _MarkerDescriptionState();
}

class _MarkerDescriptionState extends State<MarkerDescription> {
  int? selectedId;

  @override
  Widget build(BuildContext context) {
    final width = context.width - 24;

    return MarkerInherited(
      onMarkerIdChanged: (int? value) {
        setState(() {});
      },
      child: AnimatedPositioned(
        duration: const Duration(milliseconds: 250),
        left: 0,
        bottom: 105,
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
                    child: Image.network(
                        'https://i.ibb.co/MZgDtqx/303178767-501430831985703-743131834223836120-n.jpg'),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Marcelo GNC',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text('Servicios mecanicos'),
                      Text('Estrada 2018 - Tel. 444842'),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
