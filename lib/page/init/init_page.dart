import 'package:flutter/material.dart';
import 'package:flutter_null_safety/page/init/init_page_controller.dart';
import 'package:provider/provider.dart';

class InitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<InitPageController>(
      create: (_) => InitPageController(),
      builder: (BuildContext context, Widget? _) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Text('init page'),
                Text(
                  context.watch<InitPageController>().counter.toString(),
                ),
                OutlinedButton(
                  child: Text('countup'),
                  onPressed: () => context.read<InitPageController>().increment(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
