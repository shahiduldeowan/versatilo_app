part of 'package_info_cubit.dart';

sealed class PackageInfoState extends Equatable {
  const PackageInfoState({this.info});

  final PackageInfoEntity? info;

  @override
  List<Object?> get props => [info];
}

final class PackageInfoInitial extends PackageInfoState {}

final class PackageInfoLoading extends PackageInfoState {}

final class PackageInfoLoaded extends PackageInfoState {
  const PackageInfoLoaded({required super.info});
}
