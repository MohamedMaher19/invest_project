import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:invest_project/business_logic/main_cubit/main_cubit.dart';
import 'package:invest_project/business_logic/main_cubit/main_state.dart';
import 'package:invest_project/shared/styles/colors.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<HomeCubit , HomeStates>(

        listener: (context , state){},
        builder: (context , state){

          var cubit = HomeCubit.get(context);

          return Directionality(
            textDirection: TextDirection.rtl,

            child: Scaffold(
              body: cubit.screens[cubit.currentIndex],
              bottomNavigationBar:

              Container(

                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color:boxShadow,

                      spreadRadius:3,
                      blurRadius: 10
                    )
                  ]


                ),
                  child :ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),


                  ),

                child: BottomNavigationBar(

                  onTap: (index){
                    cubit.changeBottomNav(index);
                  },
                  currentIndex: cubit.currentIndex,
                  elevation: 10.0,


                  items: [

                    BottomNavigationBarItem(icon: SvgPicture.asset(
                      'assets/images/home1.svg',
                    ), label: 'الرئيــسية' , ) ,
                    BottomNavigationBarItem(icon: SvgPicture.asset(
                      'assets/images/search.svg',
                    ) ,label: 'البــحث' ),
                    BottomNavigationBarItem(icon: SvgPicture.asset(
                      'assets/images/invest.svg',
                    ),label: 'التسويق العقاري' ),
                    BottomNavigationBarItem(icon: SvgPicture.asset(
                      'assets/images/setting.svg',
                    ),label: 'المزيد' ),
                  ],
                ),
              ),
            ),
          ));
    },
    );


  }
}
