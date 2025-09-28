import 'package:equatable/equatable.dart';

class InventoryItem extends Equatable {
  final String id;
  final String name;
  final String description;
  final int quantity;
  final DateTime createdAt;
  final DateTime updatedAt;

  const InventoryItem({
    required this.id,
    required this.name,
    required this.description,
    required this.quantity,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [id, name, description, quantity, createdAt, updatedAt];
}