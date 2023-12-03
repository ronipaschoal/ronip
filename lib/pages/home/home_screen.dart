import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ronip/pages/home/sections/about_section.dart';
import 'package:ronip/pages/home/sections/home_section.dart';
import 'package:ronip/ui/theme.dart';
import 'package:ronip/ui/widgets/flutter_banner.dart';
import 'package:ronip/ui/widgets/logo.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> _launchLinkedin() async {
    final url = Uri.parse('https://www.linkedin.com/in/roni-paschoal/');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: RpFlutterBanner(
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverOverlapAbsorber(
                handle: NestedScrollView //
                    .sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  title: const SizedBox(
                    width: 48.0,
                    child: RpLogo(),
                  ),
                  backgroundColor: RpTheme.backgroundColor,
                  floating: true,
                  snap: true,
                  actions: [
                    TextButton(
                      child: const Text(
                        'About',
                        style: TextStyle(color: RpTheme.witheColor),
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16.0),
                    TextButton(
                      child: const Text(
                        'Work',
                        style: TextStyle(color: RpTheme.witheColor),
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16.0),
                    TextButton(
                      child: const Text(
                        'Contact',
                        style: TextStyle(color: RpTheme.witheColor),
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16.0),
                    IconButton(
                      onPressed: _launchLinkedin,
                      icon: SvgPicture.asset(
                        'assets/images/logos/linkedin.svg',
                        width: 16,
                        height: 16,
                        colorFilter: const ColorFilter.mode(
                          RpTheme.witheColor,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    const SizedBox(width: 48.0),
                  ],
                ),
              ),
            ],
            body: const SingleChildScrollView(
              child: Column(
                children: [
                  HomeSection(),
                  AboutSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
