import 'package:claudzap/common/extension/custom_theme_extension.dart';
import 'package:claudzap/common/utils/coloors.dart';
import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: context.theme.langBgColor,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(20),
          splashFactory: NoSplash.splashFactory,
          highlightColor: context.theme.langHightlightColor,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.language, color: Coloors.greenDark),
                SizedBox(width: 10),
                Text('English', style: TextStyle(color: Coloors.greenDark)),
                SizedBox(width: 10),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Coloors.greenDark,
                ),
              ],
            ),
          ),
        ));
  }
}
