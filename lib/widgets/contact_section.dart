import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/colors/colors.dart';
import 'package:portfolio_app/utils/sizes/size.dart';
import 'package:portfolio_app/utils/sns_links/sns_links.dart';
import 'package:portfolio_app/widgets/text_field.dart';

import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: FColors.bgLight1,
      child: Column(children: [
        //title
        const Text(
          'Get in Touch',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: FColors.whitePrimary),
        ),
        const SizedBox(
          height: 50,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 700,
            maxHeight: 100,
          ),
          child: LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth >= FMinDesktopWidth) {
              return NameEmailFieldDesktop();
            }
            return NameEmailFieldMobile();
          }),
        ),
        const SizedBox(
          height: 15,
        ),
        //Message
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 700,
          ),
          child: const FTextField(
            hintText: 'Your Message',
            maxLines: 16,
          ),
        ),
        const SizedBox(
          height: 20,
        ),

        //Send Button
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 700,
          ),
          child: SizedBox(
              height: 50,
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Get in Touch',
                ),
              )),
        ),

        //SNS Icons
        const SizedBox(
          height: 20,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 300,
          ),
          child: const Divider(
            color: FColors.whitePrimary,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          alignment: WrapAlignment.center,
          children: [
            InkWell(
              onTap: () {
                js.context.callMethod('open', [SnsLinks.github]);
              },
              child: Image.asset(
                'assets/icons/git.png',
                width: 28,
              ),
            ),
            InkWell(
              onTap: () {
                js.context.callMethod('open', [SnsLinks.linkedIn]);
              },
              child: Image.asset(
                'assets/icons/ln.png',
                width: 28,
              ),
            ),
            InkWell(
              onTap: () {
                js.context.callMethod('open', [SnsLinks.Facebook]);
              },
              child: Image.asset(
                'assets/icons/fb.png',
                width: 28,
              ),
            ),
          ],
        ),
      ]),
    );
  }

  Row NameEmailFieldDesktop() {
    return const Row(children: [
      //Name
      Flexible(
        child: FTextField(
          hintText: 'Your Name',
        ),
      ),
      SizedBox(
        width: 15,
      ),
      //Email
      Flexible(
        child: FTextField(
          hintText: 'Your Email',
        ),
      ),
    ]);
  }

  Column NameEmailFieldMobile() {
    return const Column(children: [
      //Name
      Flexible(
        child: FTextField(
          hintText: 'Your Name',
        ),
      ),
      SizedBox(
        height: 15,
      ),
      //Email
      Flexible(
        child: FTextField(
          hintText: 'Your Email',
        ),
      ),
    ]);
  }
}
