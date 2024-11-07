import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/colors/colors.dart';
import 'package:portfolio_app/style/styles.dart';
import 'package:portfolio_app/widgets/side_logo.dart';

class Header_Mobile extends StatelessWidget {
  const Header_Mobile({
    super.key,
    this.onLogoTap,
    this.onMenuTap,
  });
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      height: 60,
      width: double.maxFinite,
      decoration: FHeaderDecoration,
      child: Row(
        children: [
          Side_Logo(
            onTap: onLogoTap,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              onPressed: onMenuTap,
              icon: const Icon(Icons.menu),
              color: FColors.whitePrimary,
            ),
          )
        ],
      ),
    );
  }
}
