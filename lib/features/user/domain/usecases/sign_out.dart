import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../repositories/user_repository.dart';

class SignOut {
  final UserRepository repository;
  SignOut(this.repository);

  Future<Either<Failure, void>> call() {
    return repository.signOut();
  }
}