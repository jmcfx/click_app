import 'package:equatable/equatable.dart';

abstract class NumbersEntity extends Equatable {
  final String text;
  final int number;

  const NumbersEntity({required this.text, required this.number});

  @override
  List<Object?> get props => [text, number];
}
 