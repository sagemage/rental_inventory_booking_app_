import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';
import '../entities/inventory_item.dart';

abstract class InventoryRepository {
  Future<Either<Failure, List<InventoryItem>>> getInventoryItems();
  Future<Either<Failure, InventoryItem>> getInventoryItemById(String id);
  Future<Either<Failure, Unit>> addInventoryItem(InventoryItem item);
  Future<Either<Failure, Unit>> updateInventoryItem(InventoryItem item);
  Future<Either<Failure, Unit>> deleteInventoryItem(String id);
}