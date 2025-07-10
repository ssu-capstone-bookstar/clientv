// CheckBox2 사용 예시:
//
// bool isChecked = false;
//
// CheckBox2(
//   value: isChecked,
//   label: '위 주의사항을 모두 숙지했으며 탈퇴에 동의해요',
//   onChanged: (v) => setState(() => isChecked = v),
// )
//
// 파라미터:
// - value: 체크 여부 (bool)
// - label: 체크박스 오른쪽에 표시될 텍스트 (String)
// - onChanged: 체크 상태 변경 콜백 (ValueChanged<bool>)
// - enabled: 비활성화 여부 (bool, 기본값 true)

import 'package:flutter/material.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/common/theme/style/app_texts.dart';

class CheckBox2 extends StatelessWidget {
  final bool value;
  final String label;
  final ValueChanged<bool> onChanged;
  final bool enabled;

  const CheckBox2({
    Key? key,
    required this.value,
    required this.label,
    required this.onChanged,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enabled ? () => onChanged(!value) : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              color: value ? ColorName.p5 : ColorName.g7,
              borderRadius: BorderRadius.circular(3),
              border: Border.all(
                color: value ? ColorName.p1 : ColorName.g7,
                width: 0.8,
              ),
            ),
            child: value
                ? Center(
                    child: Assets.icons.icCheck.svg(
                      width: 11.6,
                      height: 10.2,
                    ),
                  )
                : null,
          ),
          const SizedBox(width: 6),
          Flexible(
            child: Text(
              label,
              style: AppTexts.b11
                  .copyWith(color: value ? ColorName.p1 : ColorName.g2),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
