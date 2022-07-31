import 'package:flutter/material.dart';

import 'custom_widgets/layouts/chat_ui.dart';
import 'custom_widgets/layouts/home_widget.dart';
import 'custom_widgets/layouts/profile_widget.dart';
import 'custom_widgets/sidebar.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            const SideBar(),
            const HomeWidget(),
            Expanded(child: ChatUi()),
            const ProfileWidget()
          ],
        ),
      ),
    );
  }
}
