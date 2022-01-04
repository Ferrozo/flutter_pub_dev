import 'package:dartz/dartz.dart';
import 'package:flutter_package/src/domain/packages/entities/metric.dart';
import 'package:flutter_package/src/domain/packages/entities/package.dart';
import 'package:flutter_package/src/domain/core/request_failure.dart';
import 'package:flutter_package/src/domain/packages/entities/score.dart';
import 'package:flutter_package/src/domain/packages/i_package_repository.dart';
import 'package:flutter_package/src/domain/packages/i_package_service.dart';

class PackageRepository extends IPackageRepository {
  PackageRepository(IPackageService service) : super(service);

  @override
  Future<Either<RequestFailure, Package>> getPackageName(
          {required String namePackage}) async =>
      await service.getPackageName(namePackage: namePackage);

  @override
  Future<Either<RequestFailure, List<Package>>> getPackages(
          {required int page}) async =>
      await service.getPackages(page: page);

  @override
  Future<Either<RequestFailure, Metric>> getMetricPackage(
          {required String package}) async =>
      await service.getMetricPackage(package: package);
}
