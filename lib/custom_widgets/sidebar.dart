import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/fluent.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/jam.dart';
import 'package:iconify_flutter/icons/mi.dart';

import '../models/navigation.dart';
import '../resources/colors.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  final List<Navigation> _navigations = [
    Navigation(icon: Eva.message_circle_outline),
    Navigation(icon: Mi.users),
    Navigation(icon: Fluent.call_24_regular),
    Navigation(icon: Jam.video_camera),
    Navigation(icon: Jam.bookmark_minus),
    Navigation(icon: Fluent.settings_20_regular)
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const CircleAvatar(
          backgroundImage: AssetImage("assets/images/logo.png"),
          radius: 25,
        ),
        IntrinsicHeight(
          child: Column(
            children: _navigations
                .map(
                  (e) => CircleAvatar(
                    backgroundColor: selectedIndex == _navigations.indexOf(e)
                        ? primaryParticipantColor
                        : Colors.transparent,
                    radius: 25,
                    child: Iconify(
                      e.icon,
                      size: 30,
                      color: selectedIndex == _navigations.indexOf(e)
                          ? Colors.white
                          : greyColor,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        Column(
          children: const [
            CircleAvatar(
              backgroundColor: Color.fromRGBO(117, 117, 117, 1),
              radius: 25,
              child: Iconify(
                Ic.baseline_add,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(
                  "https://randomuser.me/api/portraits/men/46.jpg"),
              radius: 25,
            )
          ],
        )
      ]),
    );
  }
}
