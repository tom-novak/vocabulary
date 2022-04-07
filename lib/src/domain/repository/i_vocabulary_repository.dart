import 'package:dartz/dartz.dart';
import 'package:vocabulary/src/domain/domain.dart';

abstract class IVocabularyRepository {
  Future<Either<Failure, List<Translation>>> getWords(
      String sourceLanguage, String targetLanguage, int? number);
}
