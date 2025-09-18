import 'dart:io';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class VideoProductRepositiories {
  final db = sl<AppDatabase>();

  Future<List<ExclusiveProductModelData>> selectAllproducts() async {
    final groups = await db.select(db.exclusiveProductModel).get();
    return groups;
  }

  Future<List<ExclusiveProductModuleModelData>> selectModulesProduct(
    int productId,
  ) async {
    final response = db.select(db.exclusiveProductModuleModel)
      ..where((tbl) => tbl.productId.equals(productId));
    final module = await response.get();
    return module;
  }

  Future<List<ExclusiveProductModuleMaterialModelData>> selectMaterialsProduct(
    int moduleId,
  ) async {
    final response = db.select(db.exclusiveProductModuleMaterialModel)
      ..where((tbl) => tbl.moduleId.equals(moduleId));
    final material = await response.get();
    return material;
  }

  Future<ExclusiveProductModuleModelData?> singlModuleProduct(
    int moduleId,
  ) async {
    final response = db.select(db.exclusiveProductModuleModel)
      ..where((tbl) => tbl.moduleId.equals(moduleId));
    final lesson = await response.getSingleOrNull();
    return lesson;
  }

  Future<List<ExclusiveProductModuleMaterialVideoModelData>> selectVideo(
    int materialId,
  ) async {
    final response = db.select(db.exclusiveProductModuleMaterialVideoModel)
      ..where((tbl) {
        return tbl.materialId.equals(materialId);
      });
    final videos = await response.get();

    return videos;
  }

  Future<ExclusiveProductModelData?> insertProduct({
    required ExclusiveProductModelData product,
  }) async {
    final response = db.select(db.exclusiveProductModel)
      ..where((tbl) {
        return tbl.productId.equals(product.productId);
      });
    final productData = await response.getSingleOrNull();
    if (productData != null) return productData;
    final banner = product.cover;
    final directory = await getApplicationDocumentsDirectory();
    String localPath = '${directory.path}/excluseve_product_cover';
    final pathBanner = '$localPath/${product.productId}.webp';
    final file = File(pathBanner);
    if ((!(await file.exists())) && banner.startsWith('http')) {
      final dio = sl<Dio>();
      await dio.download(banner, pathBanner);
      product = product.copyWith(cover: pathBanner);
    } else if (await file.exists()) {
      product = product.copyWith(cover: pathBanner);
    }
    await db
        .into(db.exclusiveProductModel)
        .insert(product, mode: InsertMode.insertOrReplace);
    final newProductData = await response.getSingleOrNull();
    return newProductData;
  }

  Future<ExclusiveProductModuleModelData?> insertModule({
    required ExclusiveProductModuleModelData module,
  }) async {
    final response = db.select(db.exclusiveProductModuleModel)
      ..where((tbl) {
        return tbl.moduleId.equals(module.moduleId);
      });
    final moduleData = await response.getSingleOrNull();
    if (moduleData != null) return moduleData;
    await db
        .into(db.exclusiveProductModuleModel)
        .insert(module, mode: InsertMode.insertOrReplace);
    final newModuleData = await response.getSingleOrNull();
    return newModuleData;
  }

  Future<ExclusiveProductModuleMaterialModelData?> insertMaterial({
    required ExclusiveProductModuleMaterialModelData material,
  }) async {
    final response = db.select(db.exclusiveProductModuleMaterialModel)
      ..where((tbl) {
        return tbl.materialId.equals(material.materialId);
      });
    final materialData = await response.getSingleOrNull();
    if (materialData != null) return materialData;
    final banner = material.cover;
    final directory = await getApplicationDocumentsDirectory();
    String localPath = '${directory.path}/excluseve_product_material_cover';
    final pathBanner = '$localPath/${material.materialId}.webp';
    final file = File(pathBanner);
    if ((!(await file.exists())) && banner.startsWith('http')) {
      final dio = sl<Dio>();
      await dio.download(banner, pathBanner);
      material = material.copyWith(cover: pathBanner);
    } else if (await file.exists()) {
      material = material.copyWith(cover: pathBanner);
    }
    await db
        .into(db.exclusiveProductModuleMaterialModel)
        .insert(material, mode: InsertMode.insertOrReplace);
    final newProductData = await response.getSingleOrNull();
    return newProductData;
  }

  Future<void> insertVideo({
    required ExclusiveProductModuleMaterialVideoModelData video,
  }) async {
    await db.managers.exclusiveProductModuleMaterialVideoModel.create(
      (row) => row(materialId: video.materialId, slug: video.slug),
    );
    return;
  }

  Future<LoadState> deleteVideo({required int videoId}) async {
    try {
      final response = db.select(db.exclusiveProductModuleMaterialVideoModel)
        ..where((tbl) {
          return tbl.id.equals(videoId);
        });
      final videoData = await response.getSingleOrNull();
      if (videoData == null) return LoadState.notFound;
      await (db.delete(
        db.exclusiveProductModuleMaterialVideoModel,
      )..where((tbl) => tbl.id.equals(videoData.id))).go();
      return LoadState.complited;
    } catch (_) {
      return LoadState.errorLoading;
    }
  }

  Future<LoadState> deleteVideoSlugs({required String slug}) async {
    try {
      final response = db.select(db.exclusiveProductModuleMaterialVideoModel)
        ..where((tbl) {
          return tbl.slug.equals(slug);
        });
      final videoData = await response.get();
      if (videoData.isEmpty) return LoadState.notFound;
      await (db.delete(
        db.exclusiveProductModuleMaterialVideoModel,
      )..where((tbl) => tbl.slug.equals(slug))).go();
      return LoadState.complited;
    } catch (_) {
      return LoadState.errorLoading;
    }
  }
}
