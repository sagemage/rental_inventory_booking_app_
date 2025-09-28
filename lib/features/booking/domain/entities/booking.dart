import 'package:equatable/equatable.dart';

class Booking extends Equatable {
  final String id;
  final String userId;
  final String inventoryItemId;
  final DateTime startDate;
  final DateTime endDate;
  final String status;

  const Booking({
    required this.id,
    required this.userId,
    required this.inventoryItemId,
    required this.startDate,
    required this.endDate,
    required this.status,
  });

  @override
  List<Object?> get props => [id, userId, inventoryItemId, startDate, endDate, status];
}