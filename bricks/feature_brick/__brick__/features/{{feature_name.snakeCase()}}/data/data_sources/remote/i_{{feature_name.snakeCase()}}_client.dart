import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../{{feature_name.snakeCase()}}.dart';

@Injectable(as: {{feature_name.pascalCase()}}Client)
class I{{feature_name.pascalCase()}}Client {
  final Dio dio;
  

   I{{feature_name.pascalCase()}}Client({
    required this.dio,
    
  });
}
