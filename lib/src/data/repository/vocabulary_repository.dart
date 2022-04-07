import 'package:dartz/dartz.dart';
import 'package:vocabulary/src/domain/domain.dart';

class VocabularyRepository implements IVocabularyRepository {
  @override
  Future<Either<Failure, List<Translation>>> getWords(
      String sourceLanguage, String targetLanguage, int? number) {
    // TODO: implement getWords
    throw UnimplementedError();
  }
}
