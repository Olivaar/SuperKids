import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:superkids/components/superkids_text.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    Widget _fundo() => Container(
            decoration: BoxDecoration(
          color: Color(0xffB0E0E6),
        ));

    return Drawer(
      child: Stack(
        children: <Widget>[
          _fundo(),
          ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(""),
                accountEmail: Text(
                  "superkids@gmail.com",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                decoration: BoxDecoration(
                    color: Color(0xffB0E0E6),
                    image: DecorationImage(
                        image: Image.asset(
                      "images/logo.png",
                      fit: BoxFit.cover,
                    ).image)),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.perm_device_information),
                title: Text("Informações"),
                onTap: () {
                  Navigator.of(context).pushNamed('/indicators');
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Sair"),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
