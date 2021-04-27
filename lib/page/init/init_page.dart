import 'package:flutter/material.dart';
import 'package:flutter_null_safety/atom/input_text/input_text.dart';
import 'package:flutter_null_safety/page/init/init_page_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final initPageProvider = StateNotifierProvider<InitPageNotifier, InitPageState>((ref) => InitPageNotifier(ref));

class InitPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(initPageProvider);
    final notifier = watch(initPageProvider.notifier);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('init page'),
              Text(state.accountName),
              InputText(
                controller: notifier.accountNameController,
                onChanged: notifier.onChangedAccountName,
              ),
              OutlinedButton(
                onPressed: notifier.resetAccountNameField,
                child: Text('reset!'),
              ),
              OutlinedButton(
                onPressed: notifier.post,
                child: Text('post!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
