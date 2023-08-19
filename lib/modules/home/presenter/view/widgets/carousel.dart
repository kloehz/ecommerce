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
  'https://scontent.fpra1-1.fna.fbcdn.net/v/t39.30808-6/303178767_501430831985703_743131834223836120_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=CZnXNMl__LsAX_rgQXI&_nc_ht=scontent.fpra1-1.fna&oh=00_AfBwkbOQeDFvCkJUXI--weAY0nhrQZxJgiSq8vPUHBQ6Ig&oe=64E52F7E',
  'https://scontent.fpra1-1.fna.fbcdn.net/v/t39.30808-6/308471231_760022465399500_5228489482353661784_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=qth2tC5dyQ8AX9Ld9gg&_nc_ht=scontent.fpra1-1.fna&oh=00_AfBBbsuVyRlvfjCJ2PPdTe4a-uNvxkfzEHApmf83FVzABg&oe=64E446B9',
  'https://scontent.fpra1-1.fna.fbcdn.net/v/t39.30808-6/301392584_499509662176866_6913873356459904842_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=HfVEy0Ja_l4AX9fInv0&_nc_ht=scontent.fpra1-1.fna&oh=00_AfD2r0wAKSFooM8iY8pS_vhDD8gNFKKNyPRr44zhVbVhdw&oe=64E4FB24',
  'https://instagram.fpra1-1.fna.fbcdn.net/v/t51.2885-19/328729786_210549828133472_1033043254643394804_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fpra1-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=gjry73v6Q9kAX_9Y5v5&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfDCK-WCBhGahr7emMw6hBPfXAyfl92fn5TGL3SdnaqbUA&oe=64E58325&_nc_sid=8b3546',
  'https://scontent.fpra1-1.fna.fbcdn.net/v/t39.30808-6/306948483_141802145216539_8211489437782074841_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=ZJpxSRBHl6kAX_Zx3St&_nc_ht=scontent.fpra1-1.fna&oh=00_AfBdqELfIEhxzCo5kjnGlXwGH7GGd67sgvZAQlqbYFGpGw&oe=64E41927',
  'https://scontent.fpra1-1.fna.fbcdn.net/v/t39.30808-6/302426655_782532613114394_2856161589490343967_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=ie594DV-6KUAX-AG8uS&_nc_ht=scontent.fpra1-1.fna&oh=00_AfC0T9ejtW5vkI1U7893VEVSFjn3bs1ImRPuTojYfhuhWw&oe=64E45CF1'
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
