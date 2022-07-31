import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/colors.dart';
import '../chat_list_widget.dart';
import '../home_widget_app_bar.dart';
import '../online_now.dart';
import 'search_bar.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.25, //25% of the window width
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(color: borderColor, width: 2),
          left: BorderSide(color: borderColor, width: 2),
        ),
      ),
      child: Column(
        children: [
          HomeWidgetAppBar(size: size),
          const SearchBar(),
          OnlineNowWidget(),
          Expanded(
            child: ChatListWidget(),
          )
        ],
      ),
    );
  }
}
