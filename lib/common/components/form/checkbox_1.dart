// CheckBox1 사용 예시:
//
// bool isChecked = false;
//
// CheckBox1(
//   value: isChecked,
//   onChanged: (v) => setState(() => isChecked = v),
// )
//
// 파라미터:
// - value: 체크 여부 (bool)
// - onChanged: 체크 상태 변경 콜백 (ValueChanged<bool>)
// - enabled: 비활성화 여부 (bool, 기본값 true)

import 'package:flutter/material.dart';
import 'package:bookstar/gen/colors.gen.dart';
import 'package:bookstar/gen/assets.gen.dart';

class CheckBox1 extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final bool enabled;
  final Color? selectedBackgroundColor;
  final Color? selectedborderColor;
  final Color? iconColor;

  const CheckBox1({
    Key? key,
    required this.value,
    required this.onChanged,
    this.enabled = true,
    this.selectedBackgroundColor = ColorName.p5,
    this.selectedborderColor = ColorName.p1,
    this.iconColor = ColorName.p1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enabled ? () => onChanged(!value) : null,
      child: Container(
        width: 22,
        height: 22,
        decoration: BoxDecoration(
          color: value ? (selectedBackgroundColor) : ColorName.g7,
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
            color: value ? (selectedborderColor ?? ColorName.p1) : ColorName.g7,
            width: 0.8,
          ),
        ),
        child: value
            ? Center(
                child: Assets.icons.icCheck.svg(
                    width: 11.6,
                    height: 10.2,
                    colorFilter: ColorFilter.mode(
                        iconColor ?? ColorName.p1, BlendMode.srcIn)),
              )
            : null,
      ),
    );
  }
}
