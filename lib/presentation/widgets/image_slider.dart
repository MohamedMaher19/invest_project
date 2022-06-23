import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:invest_project/shared/styles/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {

  CarouselController carouselController = CarouselController();
  int currentPage = 0;
  int currentColor = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
            itemCount: 4,
            carouselController:carouselController ,
           options: CarouselOptions(
          height: 200,
          autoPlay: true,
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
          autoPlayAnimationDuration: Duration(seconds: 2),
          viewportFraction: 1,
          onPageChanged: (index , reason){
            setState((){
              currentPage = index;
            });
          }
        ), itemBuilder: (BuildContext context, int index, int realIndex) {
      return Container(
        margin: EdgeInsets.all(15),
        decoration:BoxDecoration(
          image: DecorationImage(
            image:AssetImage('assets/images/mainPic.png'),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(30),
        ) ,
      );

    },

    ),
    Positioned(
    bottom: 10,
    left: 230,
    child: AnimatedSmoothIndicator(
    activeIndex:currentPage,
    count: 4 ,
    effect: ExpandingDotsEffect(
    dotColor:blueColor ,
    dotHeight: 10,
    dotWidth: 8,
    activeDotColor:Colors.grey,
    ),
    ))]);


  }
}
