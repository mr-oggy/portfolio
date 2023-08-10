import 'package:abhishek_portfolio/desktop/d_header.dart';
import 'package:abhishek_portfolio/desktop/d_about_me.dart';
import 'package:abhishek_portfolio/desktop/d_education.dart';
import 'package:abhishek_portfolio/desktop/d_experience.dart';
import 'package:abhishek_portfolio/desktop/d_contact.dart';
import 'package:abhishek_portfolio/desktop/d_footer.dart';
import 'package:abhishek_portfolio/mobile/m_header.dart';
import 'package:abhishek_portfolio/mobile/m_about_me.dart';
import 'package:abhishek_portfolio/mobile/m_education.dart';
import 'package:abhishek_portfolio/mobile/m_experience.dart';
import 'package:abhishek_portfolio/mobile/m_contact.dart';
import 'package:abhishek_portfolio/mobile/m_footer.dart';
import 'package:abhishek_portfolio/theme/app_theme.dart';
import 'package:abhishek_portfolio/theme/responsive_screen_provider.dart';
import 'package:abhishek_portfolio/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showBackToTopButton = false;
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(
        () {
          setState(
            () {
              if (_scrollController.offset >= 300) {
                _showBackToTopButton = true;
              } else {
                _showBackToTopButton = false;
              }
            },
          );
        },
      );

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(milliseconds: 1000), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    Widget desktopUI() {
      return ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: const [
          DS1Header(),
          DS2AboutMe(),
          DS3Education(),
          DS4Experience(),
          // DS5Volunteering(),
          // DS6TechNotes(),
          DS7Contact(),
          DS8Footer(),
        ],
      );
    }

    Widget mobileUI() {
      return ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: const [
          MS1Header(),
          MS2AboutMe(),
          MS3Education(),
          MS4Experience(),
          // MS5Volunteering(),
          // MS6TechNotes(),
          MS7Contact(),
          MS8Footer(),
        ],
      );
    }

    return Scaffold(
      appBar: ResponsiveScreenProvider.isDesktopScreen(context) ? null : AppBar(elevation: 0.0),
      drawer: ResponsiveScreenProvider.isDesktopScreen(context) ? null : NavBar().mobileNavBar(),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: AppThemeData.backgroundGrey,
          child: ResponsiveScreenProvider.isDesktopScreen(context) ? desktopUI() : mobileUI(),
        ),
      ),
      floatingActionButton: _showBackToTopButton == false
          ? null
          : FloatingActionButton(
              onPressed: _scrollToTop,
              tooltip: 'Go to top',
              backgroundColor: AppThemeData.buttonPrimary,
              foregroundColor: AppThemeData.iconSecondary,
              child: const Icon(
                Icons.arrow_upward_rounded,
              ),
            ),
    );
  }
}
