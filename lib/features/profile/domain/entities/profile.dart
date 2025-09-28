import 'package:equatable/equatable.dart';

class Profile extends Equatable {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String address;
  final String role; // 'client' or 'owner'
  final bool termsAccepted;

  const Profile({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.role,
    required this.termsAccepted,
  });

  @override
  List<Object?> get props => [id, name, email, phone, address, role, termsAccepted];
}