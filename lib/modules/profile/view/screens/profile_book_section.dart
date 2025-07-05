import 'package:flutter/material.dart';

class ProfileBookSection extends StatelessWidget {
  const ProfileBookSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 60,
              child: const Text('픽한 도서', style: TextStyle(color: Colors.grey)),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  // TODO: 네비게이션(3-2)
                },
                child: Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: const Icon(Icons.chevron_right),
                ),
              ),
            ),
          ],
        ),
        const Divider(),
        Row(
          children: [
            SizedBox(
              width: 60,
              child: const Text('독서 중', style: TextStyle(color: Colors.grey)),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  // TODO: 네비게이션(3-2)
                },
                child: Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: const Icon(Icons.chevron_right),
                ),
              ),
            ),
          ],
        ),
        const Divider(),
        Row(
          children: [
            SizedBox(
              width: 60,
              child: const Text('완독 도서', style: TextStyle(color: Colors.grey)),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  // TODO: 네비게이션(3-2)
                },
                child: Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: const Icon(Icons.chevron_right),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
