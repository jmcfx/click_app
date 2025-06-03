import 'package:click_app/src/features/number_trivia/presentation/blocs/number_trivia/number_trivia_bloc.dart';
import 'package:click_app/src/features/number_trivia/presentation/widgets/loading_display.dart';
import 'package:click_app/src/features/number_trivia/presentation/widgets/trivia_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/message_display.dart';
import '../widgets/trivia_control.dart';

class NumberTriviaPage extends StatelessWidget {
  const NumberTriviaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Number Trivia",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 15),
                  //top half....
                  BlocBuilder<NumberTriviaBloc, NumberTriviaState>(
                    builder: (context, state) {
                      if (state.viewState.isLoading) {
                        return LoadingDisplay();
                      }
                      if (state.viewState.isSuccess) {
                        return TriviaDisplay(
                          numberTrivia: '${state.number}',
                          textTrivia: state.trivia.toString(),
                        );
                      }
                      if (state.viewState.isError) {
                        return MessageDisplay(
                          message: state.errorMessage.toString(),
                        );
                      }
                      return MessageDisplay(message: "Start Searching!");
                    },
                  ),
                  SizedBox(height: 35),
                  //buttons....
                  TriviaControls(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
