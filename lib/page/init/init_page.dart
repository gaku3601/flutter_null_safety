import 'package:flutter/material.dart';
import 'package:flutter_null_safety/page/init/init_page_controller.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class InitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<InitPageController, InitPageState>(
      create: (_) => InitPageController(),
      builder: (BuildContext context, Widget? _) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Text('init page'),
                CounterWidget(),
                ErrorWidget(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.watch<InitPageState>().error.toString(),
        ),
        Text(
          context.watch<InitPageState>().isError.toString(),
        ),
        OutlinedButton(
          child: Text('error'),
          onPressed: () => context.read<InitPageController>().error(),
        ),
        OutlinedButton(
          child: Text('clear error'),
          onPressed: () => context.read<InitPageController>().clearError(),
        ),
      ],
    );
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.watch<InitPageState>().counter.toString(),
        ),
        OutlinedButton(
          child: Text('count up'),
          onPressed: () => context.read<InitPageController>().increment(),
        ),
      ],
    );
  }
}
