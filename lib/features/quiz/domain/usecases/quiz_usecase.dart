

import 'package:injectable/injectable.dart';

import '../domain.dart';

@Injectable()
class QuizUseCase{
  final QuizRepo quizRepo;
  QuizUseCase ({required this.quizRepo});

}