import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';
import '../entities/inventory_item.dart';
import '../repositories/inventory_repository.dart';

class GetInventoryItemById {
  final InventoryRepository repository;

  GetInventoryItemById(this.repository);

  Future<Either<Failure, InventoryItem>> call(String id) {
    return repository.getInventoryItemById(id);
  }
}