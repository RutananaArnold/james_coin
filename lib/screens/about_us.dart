import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBody: true,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.zero,
            decoration: const BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
                fit: BoxFit.cover,
                image: AssetImage("assets/invest.png"),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(85))),
            child: ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("About us")),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
