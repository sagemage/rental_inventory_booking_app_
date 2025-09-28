import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';
import '../repositories/inventory_repository.dart';

class DeleteInventoryItem {
  final InventoryRepository repository;

  DeleteInventoryItem(this.repository);

  Future<Either<Failure, Unit>> call(String id) {
    return repository.deleteInventoryItem(id);
  }
}