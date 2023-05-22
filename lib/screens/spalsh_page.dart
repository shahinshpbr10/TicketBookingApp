import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:ticketbooking_app/screens/bottom_bar.dart';
import 'package:ticketbooking_app/utils/app_style.dart';

import 'home_screen.dart';

class SpalshPage extends StatefulWidget {
  const SpalshPage({super.key});

  @override
  State<SpalshPage> createState() => _SpalshPageState();
}

class _SpalshPageState extends State<SpalshPage> {
  void initState() {
    super.initState();
    gotoHome();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Styles.bgColor,
        body: Column(
          children: [
            Gap(150),
            Center(
              child: Lottie.asset("assets/image/106593-flight-ticket.json"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                "My Flight",
                style:
                    GoogleFonts.abel(fontSize: 38, fontWeight: FontWeight.w800),
              ),
            ),
            Text(
              "Flight and Hotel Booking App",
              style: GoogleFonts.abel(fontSize: 15, letterSpacing: 2),
            )
          ],
        ),
      ),
    );
  }

  void dispose() {
    super.dispose();
  }

  Future<void> gotoHome() async {
    await Future.delayed(
      Duration(seconds: 5),
    );
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return BottomBar();
    }));
  }
}
