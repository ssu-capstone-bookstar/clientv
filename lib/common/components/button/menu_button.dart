import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuButtonItem {
  final String value;
  final String label;
  final bool disabled;

  MenuButtonItem({required this.value, required this.label, this.disabled = false});
}

class MenuButton extends StatelessWidget {
  final List<MenuButtonItem> menus;
  final Function(String) onSelected;
  final SvgPicture icon;
  final double maxWidth;
  const MenuButton({
    Key? key,
    required this.menus,
    required this.onSelected,
    required this.icon,
    this.maxWidth = 80,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      constraints: BoxConstraints(
        maxWidth: maxWidth,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      offset: const Offset(-20, 40),
      icon: icon,
      onSelected: onSelected,
      itemBuilder: (context) => [
        for (var i = 0; i < menus.length; i++) ...[
          PopupMenuItem<String>(
            height: 30,
            value: menus[i].value,
            enabled: !menus[i].disabled,
            child: Center(
              child: Text(
                menus[i].label,
                style: AppTexts.b8.copyWith(color: ColorName.g1),
              ),
            ),
          ),
          if (i != menus.length - 1) const PopupMenuDivider(),
        ],
      ],
    );
  }
}
