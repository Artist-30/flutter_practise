import 'package:flutter/material.dart';

class Lec65 extends StatelessWidget {
  const Lec65({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstraintBox Widget"),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 325,
            maxHeight: 300,
            minWidth: 150,
            minHeight: 200,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Kutchh (Wikipedia)",
                style: TextStyle(
                  fontSize: 23,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8,),
              Text(
                "Kutch district (Kachhi: [kətːʃʰ]), is a district of Gujarat state in western India, with its headquarters (capital) at Bhuj. Covering an area of 45,674 km2,[1] it is the largest district of India. The area of Kutch is larger than the entire area of other Indian states like Haryana (44,212 km2) and Kerala (38,863 km2), as well as the country of Estonia (45,335 km2).[2] The population of Kutch is about 2,092,371.[3] It has 10 talukas, 939 villages, and 6 municipalities.[3] The Kutch district is home to the Kutchi people who speak the Kutchi language.",
                style: TextStyle(
                  fontSize: 21,
                  fontFamily: 'EduNSWACTCursive',
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
