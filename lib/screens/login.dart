import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  // Initially password is obscure
  bool _obscureText = true;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

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
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(38.0),
                      child: Text(
                        "SIGN IN",
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter an email';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        hintText: "password",
                        labelText: "Password",
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: _toggle,
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                          ),
                          color: Colors.blue,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                    ),
                  ),
                  loginButton(),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            "Don't have an account ? ",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: const Text(
                              "SignUp",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/registerscreen');
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // login button and logic
  Widget loginButton() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton(
        clipBehavior: Clip.antiAlias,
        style: ElevatedButton.styleFrom(alignment: Alignment.center),
        child: const ListTile(
          title: Text("SignIn"),
          trailing: Icon(Icons.outbond),
        ),
        onPressed: () {
          // It returns true if the form is valid, otherwise returns false
          if (_formKey.currentState!.validate()) {
            // If the form is valid, display a Snackbar.
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Data is in processing.')));

            Navigator.pushNamed(context, '/index');
          }
        },
      ),
    );
  }
}
