import '../model/package_info_model.dart';

abstract class PackageInfoService {
  Future<PackageInfoModel> getInfo();
}

class PackageInfoServiceImpl implements PackageInfoService {
  @override
  Future<PackageInfoModel> getInfo() async {
    return const PackageInfoModel(
      appName: '1.0.0',
      packageName: '1.0.0',
      version: '1.0.0',
      buildNumber: '1.0.0',
      buildSignature: '1.0.0',
    );
  }
}
