import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../res/constants.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
            onPressed: () {
              launchUrl(Uri.parse(
                  'https://www.linkedin.com/in/naincy-kumari-972b32223/'));
            },
            icon: SvgPicture.asset(
              'assets/icons/linkedin.svg',
              width: Responsive.isLargeMobile(context) ? 20 : 50,
              height: Responsive.isLargeMobile(context) ? 20 : 50,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: defaultPadding / 2),
          IconButton(
              iconSize: 50,
              onPressed: () {
                launchUrl(Uri.parse('https://github.com/Naincy04'));
              },
              icon: SvgPicture.asset(
                'assets/icons/github.svg',
                width: Responsive.isLargeMobile(context) ? 20 : 50,
                height: Responsive.isLargeMobile(context) ? 20 : 50,
                color: Colors.white,
              )),
          const SizedBox(width: defaultPadding / 2),
          IconButton(
              iconSize: 50,
              onPressed: () {
                launchUrl(Uri.parse('https://twitter.com/ItsNaincy'));
              },
              icon: SvgPicture.asset(
                'assets/icons/twitter.svg',
                width: Responsive.isLargeMobile(context) ? 20 : 50,
                height: Responsive.isLargeMobile(context) ? 20 : 50,
                color: Colors.white,
              )),
          const SizedBox(width: defaultPadding / 2),
          IconButton(
              iconSize: 50,
              onPressed: () {
                launchUrl(Uri.parse('https://www.instagram.com/naincy_2702/'));
              },
              icon: SvgPicture.asset(
                'assets/icons/insta.svg',
                width: Responsive.isLargeMobile(context) ? 20 : 50,
                height: Responsive.isLargeMobile(context) ? 20 : 50,
                color: Colors.white,
              )),
          const Spacer(),
        ],
      ),
    );
  }
}
