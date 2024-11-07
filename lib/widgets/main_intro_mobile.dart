import 'package:flutter/material.dart ';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/utils/colors/colors.dart';

class MainIntroMobile extends StatelessWidget {
  const MainIntroMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenHeight / 1.5,
      constraints: const BoxConstraints(minHeight: 560),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi,\nI\'m Faisal Zafar\nA Flutter Developer',
            style: GoogleFonts.roboto(
                fontSize: 24,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: FColors.whitePrimary),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 190,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Get in Touch',
                style: TextStyle(
                  color: FColors.whitePrimary,
                ),
              ),
            ),
          ),
          const SizedBox(height: 100),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: SizedBox(
                width: 550,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            '   Hi, I\'m Faisal Zafar, a Computer Engineer from ',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          wordSpacing: 1.8,
                          color: FColors.whitePrimary,
                        ),
                      ),
                      TextSpan(
                        text: 'NUST',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 1.8,
                          color: FColors.green,
                        ),
                      ),
                      TextSpan(
                        text: ' with a strong focus on ',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 1.8,
                          color: FColors.whitePrimary,
                        ),
                      ),
                      TextSpan(
                        text: ' Mobile App Development',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 1.8,
                          color: FColors.green,
                        ),
                      ),
                      TextSpan(
                        text:
                            ' and 3D modeling. I specialize in building responsive, feature-rich mobile applications using',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 1.8,
                          color: FColors.whitePrimary,
                        ),
                      ),
                      TextSpan(
                        text: ' Flutter and Firebase',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 1.8,
                          color: FColors.green,
                        ),
                      ),
                      TextSpan(
                        text:
                            ', delivering efficient and user-friendly solutions.\n\n    Additionally, I have a passion for creating realistic 3D models with Blender, bringing concepts to life with detailed animations and visuals. I’m committed to continuously advancing my skills to deliver impactful digital experiences.',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 1.8,
                          color: FColors.whitePrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
