import 'package:flutter/cupertino.dart';

import '../resources/colors.dart';
import '../resources/users.dart';
import 'user_avatar.dart';

class OnlineNowWidget extends StatelessWidget {
  OnlineNowWidget({
    Key? key,
  }) : super(key: key);

  final ScrollController onlineNowController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Online Now",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "More",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: mutedTextColor,
                  ),
                ),
                Icon(
                  CupertinoIcons.chevron_right,
                  size: 14,
                  color: mutedTextColor,
                )
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: onlineNowController,
            child: Row(
                children: users
                    .map((e) => Column(
                          children: [
                            UserAvatar(avatarUrl: e.avatarUrl),
                          ],
                        ))
                    .toList()),
          ),
        )
      ]),
    );
  }
}
