part of 'get_product_cubit.dart';

abstract class GetProductState {}

final class GetProductInitial extends GetProductState {}
final class GetProductLoading extends GetProductState {}
final class GetProductSuccess extends GetProductState {
  final List<ProductModel> products;
  GetProductSuccess({required this.products});
}
final class GetProductError extends GetProductState {
  final String message;
  GetProductError({required this.message});
}
