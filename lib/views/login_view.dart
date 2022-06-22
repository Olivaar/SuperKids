import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:superkids/components/superkids_button.dart';
import 'package:superkids/controllers/login_controller.dart';

class Login extends StatelessWidget {
  LoginController loginController;

  Login() {
    loginController = LoginController();
  }

  Future loginWithGoogle() async {
    try {
      await loginController.GoogleLogin();
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB0E0E6),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Image.asset(
                    "images/logo.png",
                    width: 500,
                    height: 450,
                  ),
                ),
                superkidsButton(
                  text: "Entrar",
                  onPressed: () {
                    loginWithGoogle();
                    Navigator.of(context).pushReplacementNamed('/dataPlayer');
                  },
                  colorButton: 0xffFF1493,
                  fromLTRB_left: 32,
                  fromLTRB_top: 16,
                  fromLTRB_right: 32,
                  fromLTRB_bottom: 16,
                  colorLetter: 0xFFFFFFFF,
                  fontSize: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Image.asset(
                    "imagens/logo.png",
                    width: 200,
                    height: 150,
                  ),
                ),
                superkidsButton(
                  text: "Entrar",
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/home');
                  },
                  colorButton: 0xffFF1493,
                  fromLTRB_left: 32,
                  fromLTRB_top: 16,
                  fromLTRB_right: 32,
                  fromLTRB_bottom: 16,
                  colorLetter: 0xFFFFFFFF,
                  fontSize: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}*/
