// ignore_for_file: prefer_const_constructors

import 'package:cleaning_service_uiux2/pages/main_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Cleaning Service \n Online',
            style: TextStyle(fontSize: 30, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Rumah Sehat \nUntuk \nKehidupan Yang Sehat',
            style: TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/splash.png',
                    ),
                    fit: BoxFit.cover),
              )),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(context, route)
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const MainPage();
                  })),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 30),
                    decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(20)),
                        color: Colors.white),
                    child: const Text(
                      'Lanjutkan',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
