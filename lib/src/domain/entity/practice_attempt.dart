import 'package:equatable/equatable.dart';
import 'package:vocabulary/src/domain/domain.dart';

class PracticeAttempt extends Equatable {
  final DateTime time;
  final Translation translation;
  final String answer;

  const PracticeAttempt({
    required this.time,
    required this.translation,
    required this.answer,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
