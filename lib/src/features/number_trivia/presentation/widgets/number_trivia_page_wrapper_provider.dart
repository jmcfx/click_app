import 'package:click_app/src/features/number_trivia/presentation/pages/number_trivia_page.dart';

import '../blocs/number_trivia/number_trivia_bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../di/service_locator.dart' show sl;

class NumberTriviaWrapperProvider extends StatelessWidget {
  const NumberTriviaWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
     value: sl<NumberTriviaBloc>(),
      child: NumberTriviaPage()
    );
  }
}
