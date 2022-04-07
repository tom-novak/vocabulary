import 'package:equatable/equatable.dart';

class Sentence extends Equatable {
  final String language;
  final String value;
  final String? genitive;
  final String? genitiveSuffix;
  final String? nominative;
  final String? nominativeSuffix;
  final List<String>? examples;

  const Sentence({
    required this.language,
    required this.value,
    this.genitive,
    this.genitiveSuffix,
    this.nominative,
    this.nominativeSuffix,
    this.examples,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
