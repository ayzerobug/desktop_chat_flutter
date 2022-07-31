import 'package:desktop_chat_ui/resources/colors.dart';
import 'package:desktop_chat_ui/resources/input_border.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ri.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: searchBarColor,
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Iconify(
              Ri.search_line,
              size: 20,
              color: mutedTextColor,
            ),
          ),
          hintText: "Search or start new chat...",
          hintStyle: const TextStyle(fontSize: 14),
          enabledBorder: searchBarBorder,
          focusedBorder: searchBarBorder,
          contentPadding: const EdgeInsets.all(20),
        ),
        style: const TextStyle(fontSize: 14),
      ),
    );
  }
}
