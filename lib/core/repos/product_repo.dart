import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/entities/product_model.dart';
import 'package:fruits_hub/core/errors/failure.dart';

abstract class ProductRepo {
  Future<Either<Failure, List<ProductModel>>> getProducts();
  Future<Either<Failure, List<ProductModel>>> getBestSellerProducts();
}