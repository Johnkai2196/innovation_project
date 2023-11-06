import 'package:flutter/material.dart';
import 'package:innovation_project/constants/constants.dart';
import 'package:innovation_project/pages/healthgpt_page.dart';
import 'package:innovation_project/widgets/custom_app_bar.dart';
import 'package:innovation_project/widgets/fitness_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: const CustomAppBar(
          withIcon: false,
        ),
        body: Stack(
          children: <Widget>[
            const ElevatedCardExample(),
            // Background image
            Positioned.fill(
              child: Image.asset(
                'assets/images/forest-5442598_1280.png',

                fit: BoxFit.cover, // You can adjust the fit as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
