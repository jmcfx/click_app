import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../blocs/number_trivia/number_trivia_bloc.dart';
import 'custom_elevated_button.dart';
import 'custom_outline_borders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TriviaControls extends HookWidget {
  const TriviaControls({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());

    return Form(
      key: formKey,
      child: Column(
        children: [
          //textField .....
          TextFormField(
            keyboardType: TextInputType.number,
            controller: controller,
            decoration: InputDecoration(
              labelText: 'Enter a Number',
              contentPadding: EdgeInsets.all(20.r),
              enabledBorder: customOutlineInputBorder(),
              focusedBorder: customOutlineInputBorder(),
              border: customOutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter a number';
              }
              return null;
            },
          ),
          SizedBox(height: 25.r),
          Row(
            spacing: 11.r,
            children: [
              Expanded(
                child: CustomElevatedButton(
                  text: 'Search',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.read<NumberTriviaBloc>().add(
                        NumberTriviaEvent.numberStringEvent(controller.text),
                      );
                      controller.clear();
                    }
                  },
                  isTrue: true,
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  text: 'Get random Trivia',
                  onPressed: () {
                    context.read<NumberTriviaBloc>().add(
                      const NumberTriviaEvent.randomEvent(),
                    );
                    controller.clear();
                  },
                  isTrue: false,
                  textColor: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
