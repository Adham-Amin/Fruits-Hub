import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/entities/product_model.dart';
import 'package:fruits_hub/core/repos/product_repo.dart';

part 'get_product_state.dart';

class GetProductCubit extends Cubit<GetProductState> {
  GetProductCubit({required this.productRepo}) : super(GetProductInitial());

  final ProductRepo productRepo;
  late List<ProductModel> products = [];

  Future<void> getProducts() async {
    emit(GetProductLoading());
    var result = await productRepo.getProducts();
    result.fold(
      (failure) => emit(GetProductError(message: failure.message)),
      (product) {
        products = product;
        emit(GetProductSuccess(products: products));
      },
    );
  }

  Future<void> getBestSellerProducts() async {
    emit(GetProductLoading());
    var result = await productRepo.getBestSellerProducts();
    result.fold(
      (failure) => emit(GetProductError(message: failure.message)),
      (product) {
        products = product;
        emit(GetProductSuccess(products: products));
      },
    );
  }
}
