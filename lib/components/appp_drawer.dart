import 'package:flutter/material.dart';
import 'package:portfolioo_app/widgets/main_page/main_page_actions.dart';


class AppDrawer extends StatelessWidget {
  final ScrollController sc;

  const AppDrawer({Key? key, required this.sc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: Colors.grey,
          ),
        ),
      ),
      body: Center(child: MainPageActions(sc: sc)),
    );
  }
}
