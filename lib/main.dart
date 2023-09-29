import 'dart:js_util';

import 'package:flutter/material.dart';
import 'cal.dart';
import 'login.dart';
import 'nvgion.dart';
import 'profil.dart';
import 'seting.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تسجيل الدخول',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        accentColor: Colors.blueAccent,
        fontFamily: 'Roboto',
      ),
      home: MyAppWithSidebar(),
      // routes: {
      //   '/createAccount': (context) => CreateAccountPage(),
      //   '/profile': (context) => ProfilePage(),
      //   '/settings': (context) => CalculatorApp(),
      // },
    );
  }
}

class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('إنشاء حساب'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'الاسم الكامل',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'البريد الإلكتروني',
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'رقم الهاتف',
                  prefixIcon: Icon(Icons.phone),
                ),
                keyboardType: TextInputType.phone,
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
                  // اتخذ إجراءات إنشاء الحساب هنا
                },
                child: Text('إنشاء الحساب'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
          
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
          
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(radius: 50,
                backgroundImage: AssetImage('images/images3.jpg'),
                
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('الصفحة الرئيسية'),
            onTap: () {
              // اتخذ إجراءات عند النقر على الصفحة الرئيسية
              Navigator.pop(context); // إغلاق القائمة الجانبية
            },
            
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('الملف الشخصي'),
            onTap: () {
              // اتخذ إجراءات عند النقر على الملف الشخصي
              Navigator.pop(context);
              Navigator.push(context,MaterialPageRoute(
                builder: (Context)=> ProfilePage()));
               // إغلاق القائمة الجانبية
              //Navigator.pushNamed(context, '/profile'); // الانتقال إلى صفحة الملف الشخصي
            },
          ),
          ListTile(
                leading: Icon(Icons.calculate),
            title: Text('اله حاسبه'),
            onTap: () {
               Navigator.pop(context); 
              Navigator.push(context,MaterialPageRoute(
                builder: (Context)=> CalculatorScreen()));
            },
           
          
          ),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text('الاعدادات'),
            onTap: () {
              // اتخذ إجراءات عند النقر على الإعدادات
              Navigator.pop(context); 
              // إغلاق القائمة الجانبية
              Navigator.push(context,MaterialPageRoute(
                builder: (Context)=> setting()));
            },),
             ListTile(
            leading: Icon(Icons.outbond),
            title: Text('مساعدة'),
            onTap: () {
              // اتخذ إجراءات عند النقر على الإعدادات
              Navigator.pop(context); 
              // إغلاق القائمة الجانبية
              Navigator.push(context,MaterialPageRoute(
                builder: (Context)=> BottomNavigationBar1()));
            },
             ),
             ListTile(
            leading: Icon(Icons.outbond),
            title: Text('العرض'),
            onTap: () {
              // اتخذ إجراءات عند النقر على الإعدادات
              Navigator.pop(context); 
              // إغلاق القائمة الجانبية
              Navigator.push(context,MaterialPageRoute(
                builder: (Context)=> MyHomePage()));
            },
          

          ),

        ],
      ),
    );
  }
}
