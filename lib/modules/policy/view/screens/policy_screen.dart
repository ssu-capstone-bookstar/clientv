import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../model/policy.dart';
import '../../repository/policy_repository.dart';
import 'package:book/modules/auth/view_model/auth_view_model.dart';

import 'package:book/gen/colors.gen.dart';

class PolicyScreen extends ConsumerStatefulWidget {
  const PolicyScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<PolicyScreen> createState() => _PolicyScreenState();
}

class _PolicyScreenState extends ConsumerState<PolicyScreen> {
  bool _isLoading = false;
  bool _isServiceUsingAgreed = false;
  bool _isPersonalInformationAgreed = false;
  bool _isMarketingAgreed = false;

  bool get _isAllAgreed =>
      _isServiceUsingAgreed &&
      _isPersonalInformationAgreed &&
      _isMarketingAgreed;

  @override
  void initState() {
    super.initState();
    _fetchPolicies();
  }

  Future<void> _fetchPolicies() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final repo = ref.read(policyRepositoryProvider);
      final response = await repo.getPolicy();
      final Policy? data = response.data;

      if (data != null) {
        setState(() {
          _isServiceUsingAgreed = data.serviceUsingAgree == 'Y';
          _isPersonalInformationAgreed = data.personalInformationAgree == 'Y';
          _isMarketingAgreed = data.marketingAgree == 'Y';
        });
      }
    } catch (e) {
      debugPrint('Error fetching policies: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _onAgreeAllChanged(bool? newValue) {
    setState(() {
      _isServiceUsingAgreed = newValue ?? false;
      _isPersonalInformationAgreed = newValue ?? false;
      _isMarketingAgreed = newValue ?? false;
    });
  }

  void _onPolicyChanged(String policy, bool? newValue) {
    setState(() {
      switch (policy) {
        case 'service':
          _isServiceUsingAgreed = newValue ?? false;
          break;
        case 'personal':
          _isPersonalInformationAgreed = newValue ?? false;
          break;
        case 'marketing':
          _isMarketingAgreed = newValue ?? false;
          break;
      }
    });
  }

  Future<void> _updatePolicies() async {
    if (_isLoading) return;

    if (!_isServiceUsingAgreed || !_isPersonalInformationAgreed) {
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final repo = ref.read(policyRepositoryProvider);

      final payload = Policy(
        serviceUsingAgree: _isServiceUsingAgreed ? 'Y' : 'N',
        personalInformationAgree: _isPersonalInformationAgreed ? 'Y' : 'N',
        marketingAgree: _isMarketingAgreed ? 'Y' : 'N',
      );

      await repo.updatePolicy(payload);

      ref.read(authViewModelProvider.notifier).refreshToken();
    } catch (e) {
      debugPrint('Error updating policies: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          '약관 동의',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            ))
          : Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    '서비스 이용을 위해',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '약관에 동의해주세요',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: _isAllAgreed ? ColorName.p2 : ColorName.p4,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: _buildCustomCheckbox(
                        value: _isAllAgreed,
                        onChanged: (newValue) => _onAgreeAllChanged(newValue),
                      ),
                      title: const Text('전체 동의',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      subtitle: const Text(
                          '서비스 이용약관, 개인정보 처리방침, 마케팅 수신에 모두 동의합니다.',
                          style:
                              TextStyle(fontSize: 12, color: Colors.black54)),
                      onTap: () => _onAgreeAllChanged(!_isAllAgreed),
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildPolicyTile(
                    title: '(필수) 서비스 이용약관',
                    value: _isServiceUsingAgreed,
                    onChanged: (newValue) =>
                        _onPolicyChanged('service', newValue),
                  ),
                  _buildPolicyTile(
                    title: '(필수) 개인정보 수집 및 이용',
                    value: _isPersonalInformationAgreed,
                    onChanged: (newValue) =>
                        _onPolicyChanged('personal', newValue),
                  ),
                  _buildPolicyTile(
                    title: '(선택) 마케팅 정보 수신 동의',
                    subtitle: '이벤트, 쿠폰, 혜택 정보를 받아보실 수 있어요',
                    value: _isMarketingAgreed,
                    onChanged: (newValue) =>
                        _onPolicyChanged('marketing', newValue),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: _updatePolicies,
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          _isServiceUsingAgreed && _isPersonalInformationAgreed
                              ? Colors.black
                              : Colors.grey[300],
                      foregroundColor:
                          _isServiceUsingAgreed && _isPersonalInformationAgreed
                              ? Colors.white
                              : Colors.grey,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 0,
                    ),
                    child: const Text('동의하고 시작하기'),
                  ),
                ],
              ),
            ),
    );
  }

  Widget _buildPolicyTile({
    required String title,
    String? subtitle,
    required bool value,
    required ValueChanged<bool?> onChanged,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: _buildCustomCheckbox(
        value: value,
        onChanged: (newValue) => onChanged(newValue),
      ),
      title: Text(title,
          style: const TextStyle(color: Colors.black, fontSize: 16)),
      subtitle: subtitle != null
          ? Text(subtitle,
              style: const TextStyle(color: ColorName.g3, fontSize: 12))
          : null,
      trailing: const Icon(Icons.chevron_right, color: ColorName.g2),
      onTap: () {
        onChanged(!value);
      },
    );
  }

  Widget _buildCustomCheckbox(
      {required bool value, required ValueChanged<bool?> onChanged}) {
    return GestureDetector(
      onTap: () {
        onChanged(!value);
      },
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: value ? Colors.black : Colors.white,
          border: Border.all(
            color: value ? Colors.black : Colors.grey,
            width: 2,
          ),
        ),
        child: value
            ? const Icon(
                Icons.check,
                size: 16,
                color: Colors.white,
              )
            : null,
      ),
    );
  }
}
