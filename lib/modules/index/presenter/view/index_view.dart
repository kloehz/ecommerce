import 'package:ecommerce/modules/index/presenter/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IndexView extends StatelessWidget {
  const IndexView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Material(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.1),
          Hero(
            tag: 'logoTag',
            child: SvgPicture.asset(
              'assets/images/index.svg',
              width: size.width,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 12),
            child: Text(
              'SimplexBytes',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Text(
            'Un simple espacio para resolver cualquier necesidad',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Buttons()
        ],
      ),
    );
  }
}
