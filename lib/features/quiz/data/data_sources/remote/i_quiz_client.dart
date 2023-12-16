import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../quiz.dart';

@Injectable(as: QuizClient)
class IQuizClient {
  final Dio dio;
  

   IQuizClient({
    required this.dio,
    
  });
}
