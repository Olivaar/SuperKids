import 'package:flutter/material.dart';
import 'package:superkids/components/superkids_text.dart';
import 'package:superkids/enumerators/optionChallenge_enumerator.dart';
import 'package:superkids/enumerators/player_enumerator.dart';
import 'package:superkids/enumerators/year_enumerator.dart';
import 'package:superkids/views/navigationKitchen_view.dart';
import 'package:superkids/views/navBarView.dart';
import 'package:superkids/views/navigationChallenge_view.dart';
import 'package:superkids/views/navigationStore_view.dart';
import '../components/superkids_button.dart';
import '../components/superkids_button.dart';

class Home extends StatefulWidget {
  const Home({Key key, this.year, this.player}) : super(key: key);

  final YearEnumerator year;
  final PlayerEnumerator player;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  void switchPage(int p) async {
    await _pageController.animateToPage(p,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;

    final YearEnumerator year = arguments['year'];
    final PlayerEnumerator player = arguments['player'];

    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(),
      bottomNavigationBar: Theme(
        //Obtendo o tema do contexto e realizar alguma alterações
        data: Theme.of(context).copyWith(
            canvasColor: Color(0xffFF1493),
            primaryColor: Colors.white,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: TextStyle(color: Colors.white))),
        child: BottomNavigationBar(
          currentIndex: _page,
          onTap: (p) {
            switchPage(p);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Desafios'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Loja'),
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood_rounded), label: 'Cozinha')
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (p) {
          setState(() {
            _page = p;
          });
        },
        children: [
          NavigationChallenge(
            year: year,
            player: player,
          ),
          NavigationStore(),
          NavigationKitchen(
            player: player,
          )
        ],
      ),
    );
  }
}
