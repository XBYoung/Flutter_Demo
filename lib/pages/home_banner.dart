import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BannerWidget extends StatelessWidget{
  List<String> banners = <String>[
    'assets/binner/1.jpg',
    'assets/binner/2.jpg',
    'assets/binner/3.jpg',
    'assets/binner/4.jpg',
    
  ];
  @override
  Widget build(BuildContext context) {
  
    double width  = MediaQuery.of(context).size.width;
    print('width = $width');
    double height = width * 540.0/1080.0;
    return Container(
      width: width,
      height: height,
      child: Swiper(
        itemBuilder: (BuildContext context,index){
          return Container(
            //左右边距
            margin: EdgeInsets.only(left:5,right:5),
            child: Image.asset(
              banners[index],
              width:width,
              height:height,
              fit:BoxFit.cover
            ),
          );
        },
        itemCount: banners.length,
        scrollDirection: Axis.horizontal,
        autoplay: true,
      ),
      );
   
  }

}