import 'package:flutter/material.dart';
import 'package:innovation_project/constants/constants.dart';
// import 'package:innovation_project/pages/healthgpt_page.dart';
import 'package:innovation_project/widgets/custom_app_bar.dart';

import 'package:flutter_svg/flutter_svg.dart';

class HealthKPIBreath extends StatelessWidget {
  final String title;
  final String value;
  const HealthKPIBreath({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Scaffold(
        backgroundColor: backGroundColor,
        appBar: const CustomAppBar(backArrow: true),
        body: Column(
          children: <Widget>[
            // Upper Section
            Expanded(
              flex: 4,
              child: Container(
                width: screenWidth,
                margin: const EdgeInsets.all(16.0),
                child: Center(
                  child: Card(
                    margin: const EdgeInsets.all(0),
                    elevation: 0,
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Container(
                      width: screenWidth * 0.95,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/stacked-waves-haikei.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(bottom: 13.0),
                            child: const Text(
                              'Breath',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontFamily: "ConcertOne",
                              ),
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/icons/wind-svgrepo-com.svg',
                            height: 45.0,
                            width: 45.0,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 13.0),
                            child: Text(
                              value,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Lower Section
            Expanded(
              flex: 6, // 60% of the available space
              child: Container(
                width: screenWidth, // 100% of the screen width
                margin: const EdgeInsets.all(
                    16.0), // Add margin around the container
                child: Center(
                  child: Card(
                    elevation: 0, // No shadow
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Container(
                      width: screenWidth * 0.95, // 95% of the screen width
                      color: const Color(0xff1D1B1E), // Dark background color
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 8.0),
                              child: const Text(
                                'You have impressive endurance capacity.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: const EdgeInsets.only(
                                top: 8.0,
                                bottom: 8.0,
                              ),
                              padding: const EdgeInsets.only(
                                  bottom: 8.0), // Add padding to the bottom
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: const Color.fromRGBO(223, 183, 255,
                                        1), // Set the border color
                                    width: 2.0, // Set the border thickness
                                  ),
                                ),
                              ),
                              child: const Text(
                                'What VO2max tells you?',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontFamily: "ConcertOne",
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 8.0),
                              child: const Text(
                                'A good VO2max indicates efficient oxygen use, enhancing endurance, cardiovascular health, and overall fitness. It reflects the body\'s ability to sustain physical activity, improve performance, and reduce the risk of cardiovascular diseases.',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 20.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Button action
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: textPurple,
                                ),
                                child: const Text(
                                  'How to breath',
                                  style: TextStyle(
                                    color: Color(0xff4B007E),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
