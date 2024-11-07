import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/colors/colors.dart';
import 'package:portfolio_app/utils/nav_items/nav_items.dart';

class Drawer_Mobile extends StatelessWidget {
  const Drawer_Mobile({
    super.key,
    required this.onNavItemTap,
  });
  final Function(int) onNavItemTap;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: FColors.scaffoldBg,
      child: ListView(
        children: [
          for (var i = 0; i < navTitles.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              titleTextStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: FColors.whitePrimary,
              ),
              onTap: () {
                onNavItemTap(i);
              },
              leading: Icon(navIcons[i]),
              title: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  navTitles[i],
                ),
              ),
            )
        ],
      ),
    );
  }
}
