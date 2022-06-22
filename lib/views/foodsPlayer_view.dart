import 'package:flutter/material.dart';
import 'package:superkids/components/superkids_card.dart';

class FoodsPlayer extends StatefulWidget {
  @override
  _FoodsPlayerState createState() => _FoodsPlayerState();
}

class _FoodsPlayerState extends State<FoodsPlayer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SuperkidsCard(
              title: "Maçã",
              icon: Icons.food_bank_outlined,
              colorIcon: Colors.blue,
              onTap: () {},
            ),
            SuperkidsCard(
              title: "Maçã",
              icon: Icons.food_bank_outlined,
              colorIcon: Colors.blue,
              onTap: () {},
            ),
            SuperkidsCard(
              title: "Maçã",
              icon: Icons.food_bank_outlined,
              colorIcon: Colors.blue,
              onTap: () {},
            ),
            SuperkidsCard(
              title: "Maçã",
              icon: Icons.food_bank_outlined,
              colorIcon: Colors.blue,
              onTap: () {},
            ),
            SuperkidsCard(
              title: "Maçã",
              icon: Icons.food_bank_outlined,
              colorIcon: Colors.blue,
              onTap: () {},
            ),
            SuperkidsCard(
              title: "Maçã",
              icon: Icons.food_bank_outlined,
              colorIcon: Colors.blue,
              onTap: () {},
            ),
            SuperkidsCard(
              title: "Maçã",
              icon: Icons.food_bank_outlined,
              colorIcon: Colors.blue,
              onTap: () {},
            ),
            SuperkidsCard(
              title: "Maçã",
              icon: Icons.food_bank_outlined,
              colorIcon: Colors.blue,
              onTap: () {},
            ),
            SuperkidsCard(
              title: "Maçã",
              icon: Icons.food_bank_outlined,
              colorIcon: Colors.blue,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
