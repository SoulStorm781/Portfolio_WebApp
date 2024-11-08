import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/colors/colors.dart';
import 'package:portfolio_app/utils/sizes/size.dart';
import 'package:portfolio_app/widgets/contact_section.dart';
import 'package:portfolio_app/widgets/drawer_mobile.dart';
import 'package:portfolio_app/widgets/edu_and_exp.dart';
import 'package:portfolio_app/widgets/exp_desktop.dart';
import 'package:portfolio_app/widgets/exp_mobile.dart';
import 'package:portfolio_app/widgets/footer.dart';
import 'package:portfolio_app/widgets/header_mobile.dart';
import 'package:portfolio_app/widgets/header_web.dart';
import 'package:portfolio_app/widgets/main_intro_desktop.dart';
import 'package:portfolio_app/widgets/main_intro_mobile.dart';
import 'package:portfolio_app/widgets/project_Section.dart';
import 'package:portfolio_app/widgets/skills_desktop.dart';
import 'package:portfolio_app/widgets/skills_mobile.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: FColors.scaffoldBg,
        endDrawer: constraints.maxWidth >= FMinDesktopWidth
            ? null
            : Drawer_Mobile(
                onNavItemTap: (int navindex) {
                  scrollToSection(navindex);
                  scaffoldKey.currentState!.closeEndDrawer();
                },
              ),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              SizedBox(
                key: navbarKeys.first,
              ),

              ///================================main===============
              if (constraints.maxWidth >= FMinDesktopWidth)
                HeaderDesktop(
                  onNavMenuTap: (int navindex) {
                    scrollToSection(navindex);
                  },
                )
              else
                Header_Mobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState!.openEndDrawer();
                  },
                ),
              if (constraints.maxWidth >= FMinDesktopWidth)
                const MainIntroDesktop()
              else
                const MainIntroMobile(),

              //=================================skills============
              Container(
                key: navbarKeys[1],
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                width: screenWidth,
                color: FColors.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //title
                    const Text(
                      'What I can do',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: FColors.whitePrimary,
                      ),
                    ),

                    const SizedBox(
                      height: 50,
                    ),
                    //skills and platform
                    if (constraints.maxWidth >= FMedDesktopWidth)
                      const SkillsDesktop()
                    else
                      const SkillsMobile()
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              //===============Education and Experience============
              Container(
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                width: screenWidth,
                color: FColors.scaffoldBg,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //title
                    const Text(
                      'Education and Experience',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: FColors.whitePrimary,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    //education
                    EducationExperience()
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),
              //===============projects============
              ProjectSection(
                key: navbarKeys[2],
              ),
              const SizedBox(
                height: 25,
              ),
              //===============contact============
              ContactSection(
                key: navbarKeys[3],
              ),
              const SizedBox(
                height: 25,
              ),
              //==================footer============
              const FooterWidget(),
            ],
          ),
        ),
      );
    });
  }

  void scrollToSection(int index) {
    final key = navbarKeys[index];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOut,
    );
  }
}
