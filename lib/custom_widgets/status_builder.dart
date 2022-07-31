import 'package:flutter/material.dart';

import '../resources/colors.dart';

Widget statusBuilder(int stage) {
  switch (stage) {
    case 0:
      return Container();
    case 1:
      return const _StatusWidget(color: greyColor, size: 8);
    case 2:
      return _StatusWidget(color: Colors.blue.shade900, size: 8);
    default:
      return Container();
  }
}

class _StatusWidget extends StatelessWidget {
  const _StatusWidget({Key? key, required this.color, required this.size})
      : super(key: key);

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.0, right: 8),
      child: Row(
        children: [
          Container(
            height: size,
            width: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
          ),
          const SizedBox(
            width: 2,
          ),
          Container(
            height: size,
            width: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
