import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit() : super(WelcomeInitial());

  Future<void> initState() async {
    await Future.delayed(const Duration(milliseconds: 3000));
    emit(WelcomePageToHomePage());
  }
}
