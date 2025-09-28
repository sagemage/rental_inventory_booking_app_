import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/user.dart';
abstract class UserRepository {
  Future<Either<Failure, User>> getCurrentUser();
  Future<Either<Failure, User>> signUp({
    required String fullName,
    required String phoneNumber,
    String? email,
    String? address,
    required String password,
    required UserRole role,
  });
  Future<Either<Failure, User>> login({
    required String phoneNumber,
    required String password,
  });
  Future<Either<Failure, void>> updateProfile(User user);
  Future<Either<Failure, void>> signOut();
}