import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../resources/colors.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({Key? key, required this.avatarUrl, this.radius = 50})
      : super(key: key);

  final String avatarUrl;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: SizedBox(
        height: radius,
        width: radius,
        child: Stack(
          children: [
            ClipOval(
              child: CachedNetworkImage(
                imageUrl: avatarUrl,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: radius * 0.285,
                width: radius * 0.285,
                decoration: BoxDecoration(
                  color: primaryParticipantColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: backgroundColor,
                    width: 1.7,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
