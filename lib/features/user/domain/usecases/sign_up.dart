import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

class SignUp {
  final UserRepository repository;
  SignUp(this.repository);

  Future<Either<Failure, User>> call({
    required String fullName,
    required String phoneNumber,
    String? email,
    String? address,
    required String password,
    required UserRole role,
  }) {
    return repository.signUp(
      fullName: fullName,
      phoneNumber: phoneNumber,
      email: email,
      address: address,
      password: password,
      role: role,
    );
  }
}