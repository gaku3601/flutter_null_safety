import 'package:flutter/material.dart';
import 'package:flutter_null_safety/atom/input_text.dart';
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('init page'),
                PostWidget(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(context.watch<InitPageState>().accountName),
        InputText(
          key: context.read<InitPageController>().accountName,
          label: 'アカウント名',
          initValue: context.read<InitPageState>().accountName,
          isAutoValidation: true,
          validator: AccountNameValidator(),
          onChanged: context.read<InitPageController>().onChangedAccountName,
        ),
        Text(context.watch<InitPageState>().email),
        InputText(
          key: context.read<InitPageController>().email,
          label: 'Email',
          initValue: context.read<InitPageState>().email,
          isAutoValidation: true,
          validator: EmailValidator(),
          onChanged: context.read<InitPageController>().onChangedEmail,
        ),
        OutlinedButton(
          child: Text('送信'),
          onPressed: () => context.read<InitPageController>().post(),
        ),
      ],
    );
  }
}
