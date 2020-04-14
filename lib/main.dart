//一切都是组件
//选择用来容纳组件的布局组件，比如Center、Container、Row、Column等
//创建用来容纳可见内容组件、比如Text/Image、Icon等
//将课件组件添加到布局组件里，通过传递给其属性child或children
//将布局组件添加到页面组件里，一般都在其build方法里完成
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
  
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
      
        title: Text(widget.title),
      ),
      body: Center(
       child: RaisedButton(onPressed: () async {
         String url = 'http://192.168.134.1:8080/?action=getNews';
         var res = await http.get(url);
         String body = res.body;
         var json = jsonDecode(body);
         print(json);
       },
       child: Text('测试接口')),
      )
    
    );
  }
}


