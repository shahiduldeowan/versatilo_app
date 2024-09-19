import 'package:package_info_plus/package_info_plus.dart';

import '../model/package_info_model.dart';

abstract class PackageInfoService {
  Future<PackageInfoModel> getInfo();
}

class PackageInfoServiceImpl implements PackageInfoService {
  @override
  Future<PackageInfoModel> getInfo() async {
    final packageInfo = await PackageInfo.fromPlatform();

    return PackageInfoModel(
      appName: packageInfo.appName,
      packageName: packageInfo.packageName,
      version: packageInfo.version,
      buildNumber: packageInfo.buildNumber,
      buildSignature: packageInfo.buildSignature,
    );
  }
}
