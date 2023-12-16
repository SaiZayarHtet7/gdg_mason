part of 'quiz_cubit.dart';

/// {@template quiz}
/// QuizState description
/// {@endtemplate}
class QuizState extends Equatable {
  /// {@macro quiz}
  const QuizState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current QuizState with property changes
  QuizState copyWith({
    String? customProperty,
  }) {
    return QuizState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}
/// {@template quiz_initial}
/// The initial state of QuizState
/// {@endtemplate}
class QuizInitial extends QuizState {
  /// {@macro quiz_initial}
  const QuizInitial() : super();
}
