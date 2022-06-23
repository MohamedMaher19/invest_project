
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invest_project/business_logic/main_cubit/main_cubit.dart';
import 'package:invest_project/shared/styles/colors.dart';

import 'business_logic/main_cubit/main_state.dart';
import 'presentation/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit(),
    child: BlocConsumer<HomeCubit , HomeStates>(
      listener: (context , state){},
      builder: (context , state){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.red,
              selectedLabelStyle: TextStyle(
                fontFamily: 'MontserratRegular',
                height: 2,
                fontSize: 13,
                color: blueColor
              ),
              selectedItemColor: blueColor,
              // selectedIconTheme: IconThemeData(
              //   color:blueColor
              // )
            )
          ),
          home: SplashScreen(),
        );
      },
    ));


  }
}

