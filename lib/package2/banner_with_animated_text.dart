import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BannerWithAnimatedText extends StatelessWidget {
  const BannerWithAnimatedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(2.0),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              height: MediaQuery.of(context).size.height * .2,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/banner.png"))),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
              ),
            ),
          ),
          Positioned(
              top: 25,
              left: 20,
              child: Container(
                color: Colors.grey.withOpacity(0.1),
                child: DefaultTextStyle(
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Horizon',
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      RotateAnimatedText('Teacher Job',
                          textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                      RotateAnimatedText('Pilot Vacancies',
                          textStyle: const TextStyle(fontSize: 16)),
                      RotateAnimatedText('Railway Jobs',
                          textStyle: const TextStyle(fontSize: 16)),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              )),
          Positioned(
              top: 70,
              left: 20,
              child: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: SizedBox(
                  height: 30,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      onPressed: () {},
                      child: const Text(
                        'Government Jobs',
                        style: TextStyle(fontSize: 10),
                      )),
                ),
              )),
        ],
      ),
    );
  }
}
