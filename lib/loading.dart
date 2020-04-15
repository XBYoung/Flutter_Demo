import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingState createState() {
    return _LoadingState();
  }
}

class _LoadingState extends State<LoadingPage>{
  @override
  void initState() {
    super.initState();
    //延迟三秒
    Future.delayed(Duration(seconds: 3),(){
      print('Flutter企业站启动中...');
      Navigator.of(context).pushReplacementNamed('company_info');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      //叠加
      child:Stack(
        children: <Widget>[
        
          Image.asset('assets/images/bizhi.jpg'),
          Center(
            child: Text(
              'Flutter企业站',style: TextStyle(
                color: Colors.green,
                fontSize: 32,
                decoration: TextDecoration.none))
          )
        ],
      )
    );
  }
 

}

  
  

