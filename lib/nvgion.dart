import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:floating_navigation_bar/floating_navigation_bar.dart';
import 'package:flutter/material.dart';


class DemoScreen extends StatefulWidget {
  @override
  _DemoScreenState createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  int currentIndex = 0;

  var pageList = <Widget>[
    Center(
      child: Text("Home Page"),
    ),
    Center(
      child: Text("Feed Page"),
    ),
    Center(
      child: Text("Cart Page"),
    ),
    Center(
      child: Text("Profile Page"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[140],
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 70.0,
        backgroundColor: Colors.grey[200],
        title: Text(
          "Floating Navigation Bar",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),


      

   

      body: pageList[currentIndex],
      
      bottomNavigationBar: FloatingNavigationBar(
        backgroundColor: Colors.black87,
        barHeight: 80.0,
        barWidth: MediaQuery.of(context).size.width - 40.0,
        iconColor: Colors.white,
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 14.0,
        ),
        iconSize: 20.0,
        indicatorColor: Colors.white,
        indicatorHeight: 5,
        indicatorWidth: 14.0,
        items: [
          NavBarItems(
            icon: EvaIcons.homeOutline,
            title: "Home",
          ),
          NavBarItems(
            icon: EvaIcons.search,
            title: "Search",
          ),
          NavBarItems(
            icon: EvaIcons.shoppingCartOutline,
            title: "Cart",
          ),
          NavBarItems(
            icon: EvaIcons.activity,
            title: "Profile",
          ),
        ],
        onChanged: (value) {
          currentIndex = value;
          setState(() {});
        },
      ),
    );
  }
}

//------------------------------


class BottomNavigationBar1 extends StatefulWidget {
  @override
  _BottomNavigationBar1State createState() => _BottomNavigationBar1State();
}

class _BottomNavigationBar1State extends State<BottomNavigationBar1> {
  int _selected = 1;

  Widget _buildBottomNavigationBarItem(int index, IconData icon, String name, Color color) {
    bool isSelected = (_selected == index);

    return GestureDetector(
      onTap: () {
        setState(() {
          _selected = index;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        transform: isSelected ? Matrix4.identity() : Matrix4.diagonal3Values(0.8, 0.8, 1.0),
        child: Icon(
          icon,
          color: color,
        ),
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(isSelected ? 20.0 : 10.0),
          color: isSelected ? Colors.white : Colors.transparent,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(0),
            height: 50,
            color: Colors.cyan,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildBottomNavigationBarItem(1, Icons.home, 'الصفحة الرئيسية', Colors.black),
                _buildBottomNavigationBarItem(2, Icons.settings, '  الاعدادات', Colors.black),
                _buildBottomNavigationBarItem(3, Icons.person, ' ملف شخصي  ', Colors.black),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Text('الشاشة $_selected'),
        ),
      ),
    );
  }
}
