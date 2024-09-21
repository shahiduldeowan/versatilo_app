import 'package:get_it/get_it.dart';

import '../../features/entry/presentation/cubit/tab_navigation_cubit.dart';
import '../../features/welcome/data/repo/package_info_repo_impl.dart';
import '../../features/welcome/data/source/package_info_service.dart';
import '../../features/welcome/domain/repo/package_info_repo.dart';
import '../../features/welcome/domain/use_case/get_package_info_use_case.dart';
import '../../features/welcome/presentation/bloc/package_info/package_info_cubit.dart';
import '../../features/welcome/presentation/bloc/welcome/welcome_cubit.dart';

final getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  getIt
    ..registerSingleton<PackageInfoService>(PackageInfoServiceImpl())
    ..registerSingleton<PackageInfoRepo>(PackageInfoRepoImpl(getIt()))
    ..registerSingleton<GetPackageInfoUseCase>(GetPackageInfoUseCase(getIt()))
    ..registerFactory(() => PackageInfoCubit(getIt()))
    ..registerFactory(() => WelcomeCubit())
    ..registerFactory(() => TabNavigationCubit());
}
