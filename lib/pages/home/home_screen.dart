import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ronip/pages/home/sections/about_section.dart';
import 'package:ronip/pages/home/sections/contact_section.dart';
import 'package:ronip/pages/home/sections/home_section.dart';
import 'package:ronip/pages/home/sections/work_section.dart';
import 'package:ronip/ui/theme.dart';
import 'package:ronip/ui/widgets/flutter_banner.dart';
import 'package:ronip/ui/widgets/logo.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scrollController = ScrollController();

  final _homeKey = GlobalKey();
  final _aboutKey = GlobalKey();
  final _workKey = GlobalKey();
  final _contactKey = GlobalKey();

  double _homePosition = 0.0;
  double _aboutPosition = 0.0;
  double _workPosition = 0.0;
  double _contactPosition = 0.0;

  Future<void> _launchLinkedin() async {
    final url = Uri.parse('https://www.linkedin.com/in/roni-paschoal/');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  double _gtSectionPosition(GlobalKey key) {
    final RenderObject? renderObject = key.currentContext?.findRenderObject();
    if (renderObject is RenderBox) {
      return renderObject.localToGlobal(Offset.zero).dy;
    }
    return 0;
  }

  void _selectSection(double position) {
    _scrollController.animateTo(
      position,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _homePosition = _gtSectionPosition(_homeKey);
      _aboutPosition = _gtSectionPosition(_aboutKey);
      _workPosition = _gtSectionPosition(_workKey);
      _contactPosition = _gtSectionPosition(_contactKey);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: RpFlutterBanner(
        child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            title: const SizedBox(
              width: 48.0,
              child: RpLogo(),
            ),
            backgroundColor: Colors.transparent,
            actions: [
              TextButton(
                child: const Text(
                  'Home',
                  style: TextStyle(color: RpTheme.witheColor),
                ),
                onPressed: () => _selectSection(_homePosition),
              ),
              TextButton(
                child: const Text(
                  'About',
                  style: TextStyle(color: RpTheme.witheColor),
                ),
                onPressed: () => _selectSection(_aboutPosition),
              ),
              TextButton(
                child: const Text(
                  'Work',
                  style: TextStyle(color: RpTheme.witheColor),
                ),
                onPressed: () => _selectSection(_workPosition),
              ),
              TextButton(
                child: const Text(
                  'Contact',
                  style: TextStyle(color: RpTheme.witheColor),
                ),
                onPressed: () => _selectSection(_contactPosition),
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
          body: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                HomeSection(key: _homeKey),
                AboutSection(key: _aboutKey),
                WorkSection(key: _workKey),
                ContactSection(key: _contactKey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
