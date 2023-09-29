import 'package:flutter/material.dart';

import 'package:elastic_drawer/elastic_drawer.dart';
import 'package:pro_homwrk/cal.dart';
import 'package:pro_homwrk/profil.dart';

import 'main.dart';

// class setting extends StatelessWidget{
//   _settingState creatstate()  State<setting>
// }
class setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الاعدادات'),
      ),
      body: Center(
        child:
        Text('Welcome to Flutter!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ElasticDrawer(
      mainColor: Colors.white,
      drawerColor: const Color(0xff3C3F41),
      mainChild: const Center(
        child: Text(
          'Welcome to my App',
          style: TextStyle(color: Colors.black54, fontSize: 30),
        ),
      ),
      drawerChild: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              ElasticDrawerKey.drawer.currentState?.closeElasticDrawer(context);
              ElasticDrawerKey.navigator.currentState?.push(
                  MaterialPageRoute(builder: (context) => CreateAccountPage()));
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Login',
                style: TextStyle(
                    color: Color(0xfff4c20d),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              ElasticDrawerKey.drawer.currentState?.closeElasticDrawer(context);
              ElasticDrawerKey.navigator.currentState?.push(
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Profile',
                style: TextStyle(
                    color: Color(0xff3cba54),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              ElasticDrawerKey.drawer.currentState?.closeElasticDrawer(context);
              ElasticDrawerKey.navigator.currentState?.push(
                  MaterialPageRoute(builder: (context) =>  CalculatorScreen()));
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Calculator',
                style: TextStyle(
                    color: Color(0xffdb3236),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GreenPage extends StatelessWidget {
  const GreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: const Color(0xff3cba54));
  }
}

class YellowPage extends StatelessWidget {
  const YellowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: const Color(0xfff4c20d));
  }
}

class RedPage extends StatelessWidget {
  const RedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: const Color(0xffdb3236));
  }
}
