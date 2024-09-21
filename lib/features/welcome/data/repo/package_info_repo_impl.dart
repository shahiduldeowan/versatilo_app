import '../../domain/repo/package_info_repo.dart';
import '../model/package_info_model.dart';
import '../source/package_info_service.dart';

class PackageInfoRepoImpl implements PackageInfoRepo {
  const PackageInfoRepoImpl(this._service);

  final PackageInfoService _service;

  @override
  Future<PackageInfoModel> getInfo() => _service.getInfo();
}
