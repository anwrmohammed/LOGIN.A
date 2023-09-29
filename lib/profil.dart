import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الملف الشخصي'),
      ),
      body: Center(

        child: Stack(alignment: Alignment.center,
          children: [
          Container(color: const Color.fromRGBO(58, 138, 204, 0.812),width: 200,height: 200,),
          
          Container(color: Colors.yellow,width: 120,height: 120,),
          Container(color: Colors.green,width:75 ,height: 75,),
          Container(color: Colors.red,width: 40,height:  40,),
          Container(color: Colors.blue,width: 30,height: 30,),

        ]),
        //Text('Welcome to Flutter!',
         // style: TextStyle(fontSize: 24),
        //),
      ),
    );
  }
}

