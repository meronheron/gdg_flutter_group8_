import 'package:ecommerce_app/domain/entities/product.dart';
import 'package:ecommerce_app/domain/repositories/product_repository.dart';
class CreateProductUsecase{
  final ProductRepository repository;
  CreateProductUsecase(this.repository);
  Future<void> call(Product product)async{
    return await repository.createProduct(product);
  }
}
