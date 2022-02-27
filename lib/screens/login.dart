import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 200,
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
        title: Image.asset(
          "assets/20211114_174426_MakeYourOwnCoin.png",
          height: 200,
          width: 200,
          colorBlendMode: BlendMode.srcATop,
        ),
      ),
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
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(38.0),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Email",
                        labelText: "email",
                        border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "password",
                        labelText: "Password",
                        border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ElevatedButton(
                    clipBehavior: Clip.antiAlias,
                    style:
                        ElevatedButton.styleFrom(alignment: Alignment.center),
                    onPressed: () {},
                    child: const ListTile(
                      title: Text("SignIn"),
                      trailing: Icon(Icons.outbond),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
