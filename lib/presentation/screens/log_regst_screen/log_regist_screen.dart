import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:invest_project/presentation/screens/login/login_screen.dart';
import 'package:invest_project/shared/components/custom_button.dart';
import 'package:invest_project/shared/components/navigation.dart';
import 'package:invest_project/shared/components/text.dart';
import 'package:hexcolor/hexcolor.dart';

class LogOrRegstScreen extends StatelessWidget {
  const LogOrRegstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final appBar = AppBar().preferredSize.height;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        // extendBodyBehindAppBar: true,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        // ),
        body: Container(
          height: _mediaQuery.height / 1,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/splash1.png',
                ),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          'assets/images/appBar2.svg',
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
                  Spacer(),
                  Image.asset(
                    'assets/images/splash2.png',
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextUtils(
                    fontFamily: 'MontserratBold',
                    text: 'إى بي سي للخدمات العقارية',
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextUtils(
                    fontFamily: 'MontserratRegular',
                    text: 'دليلك للإستثمار والربح ',
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                  TextUtils(
                    fontFamily: 'MontserratRegular',
                    text: 'المضمون .',
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Center(
                    child: CustomButton(
                      textColor: HexColor("#FFFFFF"),
                      fontSize: 16,
                      fontFamily: 'MontserratSemiBold',
                      onPressed: () {
                         navigationTo(context ,LoginScreen() );
                      },
                      text: 'تسجيل الدخول',
                      buttonColor: HexColor("#27A6DC"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: CustomButton(
                      textColor: HexColor("#2F3639"),
                      fontSize: 16,
                      fontFamily: 'MontserratSemiBold',
                      onPressed: () {},
                      text: 'تسجيل حساب جديد',
                      buttonColor: HexColor("#FFFFFF"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
