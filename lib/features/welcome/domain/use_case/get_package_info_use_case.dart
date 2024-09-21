import '../../../../core/use_case/use_case.dart';
import '../entities/package_info_entity.dart';
import '../repo/package_info_repo.dart';

class GetPackageInfoUseCase extends UseCase<PackageInfoEntity, void> {
  GetPackageInfoUseCase(this._repo);

  final PackageInfoRepo _repo;

  @override
  Future<PackageInfoEntity> call({void param}) {
    return _repo.getInfo();
  }
}
