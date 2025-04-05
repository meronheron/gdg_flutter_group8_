import 'package:ecommerce_app/domain/entities/product.dart';
import 'package:ecommerce_app/domain/repositories/product_repository.dart';
class ViewProductUsecase {
  final ProductRepository repository;
  ViewProductUsecase(this.repository);
  Future<Product?> call(String id)async{
    return await repository.getProductById(id);
  }
}