import 'package:claudzap/common/extension/custom_theme_extension.dart';
import 'package:claudzap/common/utils/coloors.dart';
import 'package:claudzap/common/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  showBottomSheet(context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 4,
                width: 30,
                decoration: BoxDecoration(
                  color: context.theme.greyColor!.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  CustomIconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icons.close_outlined,
                  ),
                  const SizedBox(width: 10),
                  const Text('Select App language',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                ],
              ),
              const SizedBox(height: 10),
              Divider(
                  color: context.theme.greyColor!.withOpacity(0.3),
                  thickness: .5),
              RadioListTile(
                value: true,
                groupValue: true,
                onChanged: (value) {},
                activeColor: Coloors.greenDark,
                title: const Text('English'),
                subtitle: Text("phones's languague",
                    style: TextStyle(color: context.theme.greyColor)),
              ),
              RadioListTile(
                value: true,
                groupValue: false,
                onChanged: (value) {},
                activeColor: Coloors.greenDark,
                title: const Text('Português'),
                subtitle: Text("português brasileiro",
                    style: TextStyle(color: context.theme.greyColor)),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: context.theme.langBgColor,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () => showBottomSheet(context),
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
