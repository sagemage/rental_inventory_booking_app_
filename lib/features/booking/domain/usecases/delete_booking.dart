import 'package:dartz/dartz.dart';
import 'package:rental_inventory_booking_app/core/error/failures.dart';
import '../repositories/booking_repository.dart';

class DeleteBooking {
  final BookingRepository repository;

  DeleteBooking(this.repository);

  Future<Either<Failure, void>> call(String id) {
    return repository.deleteBooking(id);
  }
}