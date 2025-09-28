import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

class UpdateProfile {
  final UserRepository repository;
  UpdateProfile(this.repository);

  Future<Either<Failure, void>> call(User user) {
    return repository.updateProfile(user);
  }
}