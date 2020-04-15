//一切都是组件
//选择用来容纳组件的布局组件，比如Center、Container、Row、Column等
//创建用来容纳可见内容组件、比如Text/Image、Icon等
//将课件组件添加到布局组件里，通过传递给其属性child或children
//将布局组件添加到页面组件里，一般都在其build方法里完成
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter/material.dart';
import 'package:hello/loading.dart';
import 'app.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'flutter试一下',
  //自定义主题
  theme: mDefaultTheme,
  //添加路由器
  routes: <String,WidgetBuilder>{
    "app":(BuildContext context) => App(),
    'company_info': (BuildContext context) => WebviewScaffold(
      url: 'https://www.duba.com',
      appBar: AppBar(
        title: Text('公司介绍'),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: (){
            Navigator.of(context).pushReplacementNamed('app');
          },
        ),
      ),
      )
  },
  //指定加载页面
  home: LoadingPage(),
));

final ThemeData mDefaultTheme = ThemeData(
  primaryColor: Colors.blue,
  accentColor: Colors.green
  );


// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
  
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
   
//     return Scaffold(
//       appBar: AppBar(
      
//         title: Text(widget.title),
//       ),
//       body: Center(
//        child: RaisedButton(onPressed: () async {
//          String url = 'http://192.168.134.1:8080/?action=getNews';
//          var res = await http.get(url);
//          String body = res.body;
//          var json = jsonDecode(body);
//          print(json);
//        },
//        child: Text('测试接口')),
//       )
    
//     );
//   }
// }


