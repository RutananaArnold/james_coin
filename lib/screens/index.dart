import 'package:flutter/material.dart';
import 'package:james_coin/screens/about_us.dart';
import 'package:james_coin/screens/dasboard.dart';
import 'package:james_coin/screens/profile.dart';
import 'package:james_coin/screens/reports.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  Drawer _sideMenu() {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/20211114_174426_MakeYourOwnCoin.png"),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: Icons.dashboard_customize_outlined,
            press: () {
              setState(() {
                currentTabIndex = 0;
              });
              openCloseDrawer();
            },
          ),
          DrawerListTile(
            title: "Reports",
            svgSrc: Icons.report_gmailerrorred_rounded,
            press: () {
              setState(() {
                currentTabIndex = 1;
              });
              openCloseDrawer();
            },
          ),
          DrawerListTile(
            title: "About Us",
            svgSrc: Icons.contact_mail_rounded,
            press: () {
              setState(() {
                currentTabIndex = 2;
              });
              openCloseDrawer();
            },
          ),
          DrawerListTile(
            title: "Profile",
            svgSrc: Icons.person_outline_rounded,
            press: () {
              setState(() {
                currentTabIndex = 3;
              });
              openCloseDrawer();
            },
          ),
        ],
      ),
    );
  }

  final GlobalKey<ScaffoldState> _openDrawer = GlobalKey<ScaffoldState>();
  List<Widget> tabs = [
    const Dashboard(),
    const Reports(),
    const AboutUs(),
    const Profile()
  ];

  int currentTabIndex = 0;

  void openCloseDrawer() {
    if (_openDrawer.currentState!.isDrawerOpen) {
      _openDrawer.currentState!.openEndDrawer();
    } else {
      _openDrawer.currentState!.openDrawer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _openDrawer,
      drawer: _sideMenu(),
      backgroundColor: Colors.black,
      extendBody: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 95,
          elevation: 0,
          centerTitle: true,
          flexibleSpace: Container(
            padding: EdgeInsets.zero,
            decoration: const BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
                fit: BoxFit.cover,
                image: AssetImage("assets/invest.png"),
              ),
            ),
          ),
          title: const Text(
            "JamesCoin",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          )),
      body: tabs[currentTabIndex],
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title;
  final IconData svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Icon(
        svgSrc,
        color: Colors.black,
        size: 25,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.black, fontSize: 18),
      ),
    );
  }
}
