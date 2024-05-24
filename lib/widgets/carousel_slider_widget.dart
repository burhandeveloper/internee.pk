import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class CarouselSliderWidget extends StatelessWidget {

  final List<String> items = [
    'images/office.jpeg',
    'images/office1.jpeg',
    'images/office2.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: MediaQuery.of(context).size.height*0.3,
        width: MediaQuery.of(context).size.width,

        //Carousal Slider
        child: CarouselSlider(
          items: items.map((index) {
            return Builder(
                builder: (BuildContext context){
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.black
                    ),
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 1.0),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Image.asset(index,fit: BoxFit.fill,),
                    ),
                  );
                });
          }).toList(),
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height*0.3,
            aspectRatio: 16/9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
            autoPlayAnimationDuration: Duration(milliseconds: 500),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
