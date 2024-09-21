import '../entities/package_info_entity.dart';

abstract class PackageInfoRepo {
  Future<PackageInfoEntity> getInfo();
}
