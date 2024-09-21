import '../../domain/entities/package_info_entity.dart';

class PackageInfoModel extends PackageInfoEntity {
  const PackageInfoModel({
    super.appName,
    super.packageName,
    super.version,
    super.buildNumber,
    super.buildSignature,
  });
}
