import 'package:flutter/material.dart';

import 'pages/aboutus_page.dart';
import 'pages/home_page.dart';
import 'pages/news_page.dart';
import 'pages/product_page.dart';

class App extends StatefulWidget {
  @override
  AppState createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  var _currentPage = 0;
  HomePage homePage;
  ProductPage productPage;
  AboutUsPage aboutUsPage;
  NewsPage newsPage;

  currentPage() {
    switch (_currentPage) {
      case 0:
        if (null == homePage) {
          homePage = HomePage();
        }
        return homePage;
        break;
      case 1:
        if (null == productPage) {
          productPage = ProductPage();
        }
        return productPage;
        break;
      case 2:
        if (null == newsPage) {
          newsPage = NewsPage();
        }
        return newsPage;
        break;
      case 3:
        if (null == aboutUsPage) {
          aboutUsPage = AboutUsPage();
        }
        return aboutUsPage;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    var appBar2 = AppBar(
      title: Text('Flutter 企业站...'),
      leading: Icon(Icons.home),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {
              print('onTap');
            },
            child: Icon(Icons.search),
          ),
        ),
      ],
    );
    return Scaffold(
        appBar: appBar2,
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentPage,
            onTap: ((index) {
              setState(() {
                 _currentPage = index;
            
              });
            }),

            items: [
              BottomNavigationBarItem(
                title: Text(
                  '首页',
                  style: TextStyle(
                      color:
                          _currentPage == 0 ? Colors.redAccent : Colors.grey),
                ),
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                title: Text(
                  '产品',
                  style: TextStyle(
                      color:
                          _currentPage == 1 ? Colors.redAccent : Colors.grey),
                ),
                icon: Icon(Icons.apps),
              ),
              BottomNavigationBarItem(
                title: Text(
                  '新闻',
                  style: TextStyle(
                      color:
                          _currentPage == 2 ? Colors.redAccent : Colors.grey),
                ),
                icon: Icon(Icons.fiber_new),
              ),
              BottomNavigationBarItem(
                title: Text(
                  '关于',
                  style: TextStyle(
                      color:
                          _currentPage == 3 ? Colors.redAccent : Colors.grey),
                ),
                icon: Icon(Icons.insert_comment),
              )
            ]),
            body: currentPage(),);
  }
  //
}
