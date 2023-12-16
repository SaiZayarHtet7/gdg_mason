import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';

@Injectable(as: QuizRepo)
class IQuizRepo implements QuizRepo {
  final QuizClient client;

  IQuizRepo({required this.client});
  
  ///TODO: Todo function
}

