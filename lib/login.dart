import 'package:flutter/material.dart';

import 'main.dart';
class MyAppWithSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تسجيل الدخول'),
      ),
      drawer: Sidebar(),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'اسم المستخدم',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'كلمة المرور',
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                 // Navigator.pushNamed(context, '/createAccount');
                  Navigator.push(context,MaterialPageRoute(
                builder: (Context)=> CreateAccountPage()));
                },
                child: Text('إنشاء حساب'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
