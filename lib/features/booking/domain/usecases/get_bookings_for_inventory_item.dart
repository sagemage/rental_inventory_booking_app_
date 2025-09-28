import 'package:dartz/dartz.dart';
import 'package:rental_inventory_booking_app/core/error/failures.dart';
import '../entities/booking.dart';
import '../repositories/booking_repository.dart';

class GetBookingsForInventoryItem {
  final BookingRepository repository;

  GetBookingsForInventoryItem(this.repository);

  Future<Either<Failure, List<Booking>>> call(String inventoryItemId) {
    return repository.getBookingsForInventoryItem(inventoryItemId);
  }
}