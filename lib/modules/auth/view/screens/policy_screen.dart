import 'package:bookstar/gen/colors.gen.dart';
import 'package:bookstar/modules/auth/model/policy.dart';
import 'package:bookstar/modules/auth/view/screens/policy_detail_screen.dart';
import 'package:flutter/material.dart' hide IconAlignment;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/theme/app_style.dart';

class PolicyScreen extends ConsumerStatefulWidget {
  const PolicyScreen({super.key, required this.initPolicy});

  final Policy initPolicy;

  @override
  ConsumerState<PolicyScreen> createState() => _PolicyScreenState();
}

class _PolicyScreenState extends ConsumerState<PolicyScreen> {
  bool serviceUsingAgree = false;
  bool personalInformationAgree = false;
  bool marketingAgree = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      serviceUsingAgree = widget.initPolicy.serviceUsingAgree == PolicyAgree.Y;
      personalInformationAgree =
          widget.initPolicy.personalInformationAgree == PolicyAgree.Y;
      marketingAgree = widget.initPolicy.marketingAgree == PolicyAgree.Y;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isAllAgreed =
        serviceUsingAgree && personalInformationAgree && marketingAgree;

    bool isValidAgreed = serviceUsingAgree && personalInformationAgree;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Text("약관 동의",
                          style: AppTexts.b1.copyWith(color: ColorName.w1))),
                  Center(
                    child: Text("서비스 이용을 위해 약관에 동의해주세요",
                        style: AppTexts.b6.copyWith(color: ColorName.g1)),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  _buildAllPolicyAgree(
                      isAllAgreed: isAllAgreed,
                      onTap: () {
                        setState(() {
                          serviceUsingAgree = !isAllAgreed;
                          personalInformationAgree = !isAllAgreed;
                          marketingAgree = !isAllAgreed;
                        });
                      }),
                  SizedBox(
                    height: 8,
                  ),
                  _buildPolicyAgree(
                      text: "(필수) 서비스 이용약관",
                      isAgreed: serviceUsingAgree,
                      onToggle: () {
                        setState(() {
                          serviceUsingAgree = !serviceUsingAgree;
                        });
                      },
                      onDetail: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (_) => PolicyDetailScreen(
                                policyType: PolicyType.serviceUsing));
                      }),
                  SizedBox(
                    height: 8,
                  ),
                  _buildPolicyAgree(
                      text: "(필수) 개인정보 수집 및 이용",
                      isAgreed: personalInformationAgree,
                      onToggle: () {
                        setState(() {
                          personalInformationAgree = !personalInformationAgree;
                        });
                      },
                      onDetail: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (_) => PolicyDetailScreen(
                                policyType: PolicyType.personalInformation));
                      }),
                  SizedBox(
                    height: 8,
                  ),
                  _buildPolicyAgree(
                      text: "(선택) 마케팅 정보 수신 동의",
                      isAgreed: marketingAgree,
                      onToggle: () {
                        setState(() {
                          marketingAgree = !marketingAgree;
                        });
                      },
                      onDetail: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (_) => PolicyDetailScreen(
                                policyType: PolicyType.marketing));
                      }),
                ],
              ),
              _buildActionButton(
                context,
                '동의하고 시작하기',
                isValidAgreed ? ColorName.p1 : ColorName.g7,
                AppTexts.b7.copyWith(
                    color: isValidAgreed ? ColorName.w1 : ColorName.g3),
                () {
                  Navigator.pop(context, {
                    "serviceUsingAgree":
                        serviceUsingAgree ? PolicyAgree.Y : PolicyAgree.N,
                    "personalInformationAgree": personalInformationAgree
                        ? PolicyAgree.Y
                        : PolicyAgree.N,
                    "marketingAgree":
                        marketingAgree ? PolicyAgree.Y : PolicyAgree.N,
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAllPolicyAgree({
    required bool isAllAgreed,
    required Function() onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: ColorName.p1,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              _buildCheckbox(isChecked: isAllAgreed),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "전체 동의",
                      style: AppTexts.b6.copyWith(color: ColorName.w1),
                    ),
                    Text(
                      "서비스 이용약관, 개인정보 처리방침, 마케팅 수신에 모두 동의합니다.",
                      style: AppTexts.b9.copyWith(color: ColorName.g2),
                      softWrap: true,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPolicyAgree({
    required String text,
    required bool isAgreed,
    required Function() onToggle,
    required Function() onDetail,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: onToggle,
              child: Row(
                children: [
                  _buildCheckbox(isChecked: isAgreed),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    text,
                    style: AppTexts.b8.copyWith(color: ColorName.w1),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: onDetail,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Icon(
                  Icons.chevron_right,
                  color: ColorName.g3,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCheckbox({required bool isChecked}) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isChecked ? ColorName.p1 : ColorName.w1,
        border: Border.all(
          color: ColorName.g2,
          width: 2,
        ),
      ),
      child: isChecked
          ? const Icon(
              Icons.check,
              size: 16,
              color: ColorName.w1,
            )
          : null,
    );
  }

  Widget _buildActionButton(
    BuildContext context,
    String text,
    Color backgroundColor,
    TextStyle textStyle,
    VoidCallback onPressed,
  ) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 18),
          width: double.infinity,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ));
  }
}
