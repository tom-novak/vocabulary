import 'package:equatable/equatable.dart';
import 'package:vocabulary/src/domain/domain.dart';

class Attempts extends Equatable {
  final Translation translation;
  final int count;
  final int mistakes;

  const Attempts({
    required this.translation,
    required this.count,
    required this.mistakes,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
