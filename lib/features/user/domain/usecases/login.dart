import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

class Login {
  final UserRepository repository;
  Login(this.repository);

  Future<Either<Failure, User>> call({
    required String phoneNumber,
    required String password,
  }) {
    return repository.login(
      phoneNumber: phoneNumber,
      password: password,
    );
  }
}