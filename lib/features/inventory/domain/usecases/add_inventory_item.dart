import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';
import '../entities/inventory_item.dart';
import '../repositories/inventory_repository.dart';

class AddInventoryItem {
  final InventoryRepository repository;

  AddInventoryItem(this.repository);

  Future<Either<Failure, Unit>> call(InventoryItem item) {
    return repository.addInventoryItem(item);
  }
}