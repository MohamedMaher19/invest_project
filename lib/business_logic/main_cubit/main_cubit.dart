

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invest_project/presentation/screens/home/home_screen.dart';
import 'package:invest_project/presentation/screens/search/search_screen.dart';
import 'package:invest_project/presentation/screens/settings/setting_screen.dart';
import 'package:invest_project/presentation/screens/taswweq/taswweq_screen.dart';

import 'main_state.dart';

class HomeCubit extends Cubit<HomeStates>{

  HomeCubit(): super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    TaswweqScreen(),
    SettingScreen(),

  ];


  void changeBottomNav (int index){
    currentIndex = index;
    emit(HomeChangeBottomNav());
  }
}