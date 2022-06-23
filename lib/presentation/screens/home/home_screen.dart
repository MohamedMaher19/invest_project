import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:invest_project/presentation/widgets/categories_data.dart';
import 'package:invest_project/presentation/widgets/categories_item.dart';
import 'package:invest_project/presentation/widgets/image_slider.dart';
import 'package:invest_project/shared/components/text.dart';
import 'package:invest_project/shared/styles/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
            body : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
             Container(
              height: 120,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextUtils(text: 'مرحبا بك', fontSize: 14, fontFamily: 'MontserratRegular', fontWeight: FontWeight.normal, color: grayColor),
                        SizedBox(height: 10,),
                        TextUtils(text: 'محمد ماهر', fontSize: 17, fontFamily: 'MontserratBold', fontWeight: FontWeight.normal, color: blackColor),

                      ],
                    ) ,
                    Spacer(),
                    SvgPicture.asset(
                      'assets/images/blackBar1.svg',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextUtils(
                        fontFamily: 'MontserratLight',
                        text: 'EN',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                      'assets/images/appBar1.svg',

                    ),
                  ],
                ),
              ),
            ),
               ImageSlider() ,

               SizedBox(height: 10,),
                Container(
                  height: 300,
                  // color: Colors.red,
                  child:  GridView.count(
                    physics: const BouncingScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: 3/2.5 ,
                    crossAxisSpacing: 1/1.5,
                    mainAxisSpacing: 3/1.5,

                             children:
                               Categories_data.map((CategoryData ) =>
                               CategoryItem( imgUrl:  CategoryData.imageUrl, title:CategoryData.title ,)
                               ).toList() ,
                  ) ,
                )


               ],
            )


        ) ));



  }
}
