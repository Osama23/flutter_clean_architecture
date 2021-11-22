import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/error/failures.dart';
import 'package:flutter_clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  // Either here is used to handle error and success
  // by this way we don't have to deal with catching exceptions anywhere else in the app
  // the exceptions will be converted to failure
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);

  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}