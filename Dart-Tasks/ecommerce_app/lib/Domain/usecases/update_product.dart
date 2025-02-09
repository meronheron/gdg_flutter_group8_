import 'package:ecommerce_app/domain/entities/product.dart';
import 'package:ecommerce_app/domain/repositories/product_repository.dart';
class UpdateProductUsecase{
  final ProductRepository repository;
  UpdateProductUsecase(this.repository);
  Future<void> call(Product product)async{
    return await repository.updateProduct(product);
  }
}