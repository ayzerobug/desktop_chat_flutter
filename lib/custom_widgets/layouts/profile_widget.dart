import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:intrinsic_grid_view/intrinsic_grid_view.dart';

import '../../resources/colors.dart';
import '../../resources/shared_images.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.25, //25% of the window width
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(color: borderColor, width: 2),
        ),
      ),
      child: Column(children: [
        ProfileWidgetAppBar(size: size),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                SizedBox(
                  height: 30,
                ),
                UserDetails(),
                MediaThumbnails(),
                FileThumbnails(),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class FileThumbnails extends StatelessWidget {
  const FileThumbnails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    "Files",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "12 Files",
                    style: TextStyle(fontSize: 12, color: mutedTextColor),
                  ),
                ],
              ),
              const Text(
                "View all",
                style: TextStyle(
                  fontSize: 14,
                  color: primaryParticipantColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(14),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: secondaryParticipantColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: chatBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(children: const  [
                  Iconify(
                    Ion.document_text,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Brief Project Real Estate Landing page    ",
                      style: TextStyle(
                        color: greyColor,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "DOCX",
                    style: TextStyle(
                      color: greyColor,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "32 kb",
                    style: TextStyle(
                      color: greyColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(14),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: secondaryParticipantColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: chatBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(children: const [
                  Iconify(
                    Ion.document_text,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Brief Project Real Estate Landing page    ",
                      style: TextStyle(
                        color: greyColor,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "DOCX",
                    style: TextStyle(
                      color: greyColor,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "32 kb",
                    style: TextStyle(
                      color: greyColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class MediaThumbnails extends StatelessWidget {
  const MediaThumbnails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      "Media",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "14 pictures",
                      style: TextStyle(fontSize: 12, color: mutedTextColor),
                    ),
                  ],
                ),
                const Text(
                  "View all",
                  style: TextStyle(
                    fontSize: 14,
                    color: primaryParticipantColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          IntrinsicGridView.vertical(
              padding: const EdgeInsets.only(
                  top: 16, bottom: 12, left: 12, right: 12),
              columnCount: 2,
              verticalSpace: 10,
              horizontalSpace: 10,
              children: images.map((e) => e).toList())
        ],
      ),
    );
  }
}

class UserDetails extends StatelessWidget {
  const UserDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        children: const [
          CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(
                "https://randomuser.me/api/portraits/men/46.jpg"),
            radius: 50,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "John Doe",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Online",
            style: TextStyle(
              color: primaryParticipantColor,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}

class ProfileWidgetAppBar extends StatelessWidget {
  const ProfileWidgetAppBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: size.height * 0.14, //14% of window height
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: borderColor, width: 2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Contact detail",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: greyColor),
              shape: BoxShape.circle,
            ),
            child: const Iconify(
              Uil.times,
              color: Colors.white,
              size: 22,
            ),
          )
        ],
      ),
    );
  }
}
