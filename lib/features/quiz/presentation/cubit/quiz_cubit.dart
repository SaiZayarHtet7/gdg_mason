import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:injectable/injectable.dart';
part 'quiz_state.dart';

@Injectable()
class QuizCubit extends Cubit<QuizState> {
  QuizCubit() : super(const QuizInitial());

  /// A description for yourCustomFunction 
  FutureOr<void> yourCustomFunction() {
    // TODO: Add Logic
  }
}
