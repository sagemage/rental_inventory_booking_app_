import 'package:dartz/dartz.dart';
import 'package:rental_inventory_booking_app/core/error/failures.dart';
import '../entities/booking.dart';
import '../repositories/booking_repository.dart';

class CreateBooking {
  final BookingRepository repository;

  CreateBooking(this.repository);

  Future<Either<Failure, Booking>> call(Booking booking) {
    return repository.createBooking(booking);
  }
}