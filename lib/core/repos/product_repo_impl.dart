
import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/entities/product_model.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/core/repos/product_repo.dart';
import 'package:fruits_hub/core/services/firestoe_services.dart';
import 'package:fruits_hub/core/utils/backend_endpoints.dart';

class ProductRepoImpl extends ProductRepo {
  final FirestoeServices firestoeServices;

  ProductRepoImpl({required this.firestoeServices});
  @override
  Future<Either<Failure, List<ProductModel>>> getProducts() async {
    try {
      var data = await firestoeServices.getData(
        path: BackendEndpoints.products,
      );
      List<ProductModel> result = (data as List<dynamic>)
    .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
    .toList();
      return right(result);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getBestSellerProducts() async {
    try {
      var data = await firestoeServices.getData(
        path: BackendEndpoints.products,
        query: {"orderBy": "bestSeller", "descending": true, "limit": 4},
      );
      List<ProductModel> result = (data as List<dynamic>)
    .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
    .toList();
      return right(result);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }
}
