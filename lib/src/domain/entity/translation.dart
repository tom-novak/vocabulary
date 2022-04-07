import 'package:equatable/equatable.dart';
import 'package:vocabulary/src/domain/domain.dart';

class Translation extends Equatable {
  final String sourceLanguage;
  final String targetLanguage;
  final Sentence source;
  final List<Sentence> targets;

  const Translation(
      {required this.sourceLanguage,
      required this.targetLanguage,
      required this.source,
      required this.targets});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
