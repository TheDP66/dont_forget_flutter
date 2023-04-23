import 'package:dont_forget_app/common/extension/custom_theme_extension.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search...",
                hintStyle: TextStyle(
                  color: context.theme.greyColor,
                ),
                filled: true,
                fillColor: context.theme.chatTextFieldBg,
                isDense: true,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    style: BorderStyle.none,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
