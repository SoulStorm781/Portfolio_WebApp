import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/colors/colors.dart';
import 'package:portfolio_app/utils/nav_items/nav_items.dart';
import 'package:portfolio_app/style/styles.dart';
import 'package:portfolio_app/widgets/side_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({
    super.key,
    required this.onNavMenuTap,
  });
  final Function(int) onNavMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 5),
      height: 60,
      width: double.maxFinite,
      decoration: FHeaderDecoration,
      child: Row(
        children: [
          Side_Logo(
            onTap: () {},
          ),
          const Spacer(),
          for (var i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: TextButton(
                onPressed: () {
                  onNavMenuTap(i);
                },
                child: Text(navTitles[i],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: FColors.whitePrimary,
                    )),
              ),
            )
        ],
      ),
    );
  }
}
