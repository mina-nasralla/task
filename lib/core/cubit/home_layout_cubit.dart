import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/Features/Home_Screen/body.dart';

import '../../Features/Home_Screen/other_screens/account_screen.dart';
import '../../Features/Home_Screen/other_screens/chat_screen.dart';
import '../../Features/Home_Screen/other_screens/myads_screen.dart';

part 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(HomeLayoutInitial());

  static HomeLayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens = [
    const BodyView(),
    const ChatScreen(),
    const MyadsScreen(),
    const AccountScreen(),
  ];

  void changeBottomNavBar(int index) {
      currentIndex = index;
      emit(BottomNavBar());
  }
}
