import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          autoPlay: true, aspectRatio: 2.0, enlargeCenterPage: true),
      items: imageSliders,
    );
  }
}

final List<String> imgList = [
  'https://i.ibb.co/MZgDtqx/303178767-501430831985703-743131834223836120-n.jpg',
  'https://i.ibb.co/Nj8fdbn/20431637-10155381195540734-7555346973007001347-n.jpg',
  'https://i.ibb.co/G9T1tz6/306948483-141802145216539-8211489437782074841-n.jpg',
  'https://i.ibb.co/JR8W2ph/302426655-782532613114394-2856161589490343967-n.jpg',
  'https://i.ibb.co/714KjBG/345569242-178920545105857-30804218646237185-n.jpg',
  'https://i.ibb.co/8BP35kN/2020-06-12.png'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              child: Stack(
                children: <Widget>[
                  Image.network(item, fit: BoxFit.cover, width: 1000.0),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: const Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ))
    .toList();
