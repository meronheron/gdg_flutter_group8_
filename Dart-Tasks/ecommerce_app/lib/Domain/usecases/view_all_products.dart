import 'package:ecommerce_app/domain/entities/product.dart';
import 'package:ecommerce_app/domain/repositories/product_repository.dart';
import 'usecase.dart'; 
class ViewAllProductsUsecase implements UseCase<List<Product>, NoParams>{
  final ProductRepository repository;
  ViewAllProductsUsecase(this.repository);
  @override
  Future<List<Product>> call(NoParams p)async{
    return await repository.getAllProducts();
  }
}

//  for usecases with no parameters
class NoParams {}
