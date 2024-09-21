import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/package_info_entity.dart';
import '../../../domain/use_case/get_package_info_use_case.dart';

part 'package_info_state.dart';

class PackageInfoCubit extends Cubit<PackageInfoState> {
  PackageInfoCubit(this._getInfo) : super(PackageInfoInitial());

  final GetPackageInfoUseCase _getInfo;

  Future<void> getPackageInfo() async {
    try {
      emit(PackageInfoLoading());
      var packageInfo = await _getInfo();
      emit(PackageInfoLoaded(info: packageInfo));
    } catch (e) {
      emit(PackageInfoInitial());
    }
  }
}
