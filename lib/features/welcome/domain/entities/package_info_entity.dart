// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class PackageInfoEntity extends Equatable {
  final String? appName;
  final String? packageName;
  final String? version;
  final String? buildNumber;
  final String? buildSignature;

  const PackageInfoEntity({
    this.appName,
    this.packageName,
    this.version,
    this.buildNumber,
    this.buildSignature,
  });

  @override
  List<Object?> get props {
    return [
      appName,
      packageName,
      version,
      buildNumber,
      buildSignature,
    ];
  }
}
