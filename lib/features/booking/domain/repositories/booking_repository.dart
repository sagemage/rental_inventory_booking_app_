import 'package:dartz/dartz.dart';
import '../../../core/error/failures.dart';
import '../entities/booking.dart';

abstract class BookingRepository {
  Future<Either<Failure, Booking>> getBookingById(String id);
  Future<Either<Failure, List<Booking>>> getBookingsForUser(String userId);
  Future<Either<Failure, List<Booking>>> getBookingsForInventoryItem(String inventoryItemId);
  Future<Either<Failure, Booking>> createBooking(Booking booking);
  Future<Either<Failure, Booking>> updateBooking(Booking booking);
  Future<Either<Failure, void>> deleteBooking(String id);
}