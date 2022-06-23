import 'package:flutter/material.dart';
import 'package:invest_project/shared/components/text.dart';
import 'package:invest_project/shared/styles/colors.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({Key? key, required this.title, required this.imgUrl})
      : super(key: key);
  final String title;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
// دااللايتم الواحد ال فيه الصوره والكلام ال عليها
    return Expanded(
      child:
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imgUrl),
            fit: BoxFit.fill,
          ),
         // color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child:Center(
          child: TextUtils(text: title,
              fontSize: 14,
              fontFamily: 'MontserratRegular',
              fontWeight: FontWeight.normal,
              color: whiteColor),
        ),
      ),
    ),
    );
  }
}

Widget buildGridItem1(final String title,final String imgUrl) =>
    Stack(
      children: [
        Image.asset(imgUrl,
          fit: BoxFit.cover,
          width: double.infinity,
          height: 200,
        ),
        Container(
          // padding: const EdgeInsets.all(2),
          alignment: Alignment.center,
          child: TextUtils(text: title,
              fontSize: 14,
              fontFamily: 'MontserratRegular',
              fontWeight: FontWeight.normal,
              color: whiteColor),
        )


      ],
    );