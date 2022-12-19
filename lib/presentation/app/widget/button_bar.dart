
import 'package:flutter/material.dart';

import '../page/acount.dart';
import '../page/cart.dart';
import '../page/home.dart';
import '../page/star.dart';


class ButtonBor extends StatefulWidget {
  const ButtonBor({super.key});

  @override
  State<ButtonBor> createState() => _ButtonBorState();
}


class _ButtonBorState extends State<ButtonBor> {

  int _selectedIndex = 0;

  void _navigationNavBar(int index){
    setState(() {
      _selectedIndex = index;

    });
  }

  // paginile
  final List<Widget> _children =[
    const Home(),
    const star(),
    const cart(),
    const acount(),
  ];

  @override
  Widget build(BuildContext context) {

    //getcategories(context);

    return Scaffold(
      body:  _children[_selectedIndex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigationNavBar,
          type: BottomNavigationBarType.fixed,
          items:  [
            BottomNavigationBarItem(icon: Icon(Icons.home), label:'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label:'star'),
            BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart), label:'cart'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle), label:'acount'),
          ],
        ),
    );
  }


}

