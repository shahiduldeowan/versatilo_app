import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'tab_navigation_state.dart';

class TabNavigationCubit extends Cubit<TabNavigationState> {
  TabNavigationCubit() : super(const TabSelected(0));

  void onTabSelected(int index) {
    emit(TabSelected(index));
  }
}
