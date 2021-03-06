import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:invest_project/layout/home_layout.dart';
import 'package:invest_project/presentation/screens/register/register_screen.dart';
import 'package:invest_project/presentation/widgets/text_button.dart';
import 'package:invest_project/shared/components/custom_button.dart';
import 'package:invest_project/shared/components/custom_form_field.dart';
import 'package:invest_project/shared/components/navigation.dart';
import 'package:invest_project/shared/components/text.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:invest_project/shared/styles/colors.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({Key? key, }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phoneController = TextEditingController();

  final TextEditingController passWordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  int radioContainerIndex = 1 ;

   @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final appBar = AppBar().preferredSize.height;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Stack(
        // extendBodyBehindAppBar: true,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        // ),
        children: [
           Container(
      height: _mediaQuery.height / 1,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/splash1.png',
                ),
                fit: BoxFit.cover),
          ),),
            Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height:800,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/splash1.png',
                          ),
                          fit: BoxFit.cover),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
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
                          Image.asset(
                            'assets/images/splash2.png',
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextUtils(
                            fontFamily: 'MontserratBold',
                            text: '?????????? ????????????',
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextUtils(
                            fontFamily: 'MontserratRegular',
                            text: '???????? ?????? ????????????',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              radioButton(value: 1,
                                  onChanged: (int ? value){
                                  setState((){
                                    radioContainerIndex = value!;
                                  });

                                  }),
                              TextUtils(text: '???????? ????????', fontSize: 15, fontFamily: 'MontserratRegular', fontWeight: FontWeight.normal, color: whiteColor),
                              radioButton(value: 2,
                                  onChanged: (int ? value){
                                    setState((){
                                      radioContainerIndex = value!;
                                    });

                                  }),
                              TextUtils(text: '????????????', fontSize: 15, fontFamily: 'MontserratRegular', fontWeight: FontWeight.normal, color: offwhiteColor),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),



                          CustomFormField(

                            preficIcon: Image.asset('assets/images/phone.png' ,width: 20,height: 20, ),
                            validator: (value){},
                            hintText: '?????????? ???????????? / ?????? ????????????',
                            controller: phoneController,
                            obsecure: false,
                            fontFamily: 'MontserratLight',

                            textColor: whiteColor.withOpacity(0.4),
                            fontSize: 15,
                            type: TextInputType.number,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomFormField(
                            type: TextInputType.text,
                            preficIcon: Image.asset('assets/images/eye-lock-linear.png' , ),
                            validator: (value){},
                            hintText: '???????? ????????????',
                            controller: passWordController,
                            obsecure: false,
                            fontFamily: 'MontserratLight',
                            suffixIcon:Image.asset('assets/images/eye-linear.png' ,),

                            textColor: HexColor("#FFFFFF").withOpacity(0.4),
                            fontSize: 15,

                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              defaultTextBottom(textColor: whiteColor, fontSize: 15, onPressed: (){}, fontFamily: 'MontserratRegular', text: '???? ???????? ???????? ???????????? ??'),
                            ],
                          ),


                          Center(
                            child: CustomButton(
                              textColor: HexColor("#FFFFFF"),
                              fontSize: 16,
                              fontFamily: 'MontserratSemiBold',
                              onPressed: () {
                                navigationTo(context ,HomeLayout() );
                              },
                              text: '????????',
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
                              onPressed: () {
                                navigationTo(context ,RegisterScreen() );

                              },
                              text: '?????????? ???????? ????????',
                              buttonColor: HexColor("#FFFFFF"),
                            ),
                          ),



                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

          )
        ],

      ),
    );
  }

  Widget radioButton ({
  required int value ,
    required Function onChanged,
    bool changeColor = false,

}){
     return Radio(
         value: value,
         groupValue: radioContainerIndex,
         fillColor: MaterialStateColor.resolveWith((states) =>blueColor),
          onChanged: (int ? value){
           onChanged(value);

    });
  }

}


