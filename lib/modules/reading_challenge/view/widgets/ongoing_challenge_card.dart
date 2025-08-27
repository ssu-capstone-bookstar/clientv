import 'package:book/common/components/form/checkbox_1.dart';
import 'package:book/common/theme/app_style.dart';
import 'package:book/common/utils/overlay_utils.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/reading_challenge/model/challenge_response.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class OngoingChallengeCard extends StatelessWidget {
  const OngoingChallengeCard({
    required this.challenge,
    this.isSelectionMode = false,
    this.isSelected = false,
    required this.onTap,
    required this.onToggle,
    super.key,
  });

    final ChallengeResponse challenge;
  final bool isSelectionMode;
  final bool isSelected;
  final Function() onTap;
  final Function() onToggle;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Material(
          color: Colors.transparent,
          child: GestureDetector(
            onTap: !isSelectionMode ?onTap : onToggle,
            child: Stack(
              fit: StackFit.expand,
              children: [
                _buildBookCover(),
                _buildGradientOverlay(),
                _buildBookTitle(),
                if (isSelectionMode) _buildSelectionCheckbox(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBookCover() {
    return CachedNetworkImage(
      imageUrl: challenge.book.thumbnailUrl,
      fit: BoxFit.cover,
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }

  Widget _buildGradientOverlay() {
    return OverlayUtils.linearGradientOverlay(
      height: 80,
      colors: [
        Colors.transparent,
        Colors.black.withValues(alpha: 0.1),
        Colors.black.withValues(alpha: 0.8),
      ],
    );
  }

  Widget _buildBookTitle() {
    return Positioned(
      bottom: 8,
      left: 8,
      right: 8,
      child: Text(
        challenge.book.title,
        style: AppTexts.b11.copyWith(color: ColorName.w1),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _buildSelectionCheckbox() {
    return Positioned(
      top: 11,
      right: 8,
      child: CheckBox1(
        value: isSelected,
        onChanged: (bool value) => onToggle(),
        selectedBackgroundColor: ColorName.p1,
        selectedborderColor: const Color(0xFF8972FF),
        iconColor: ColorName.w1,
      ),
    );
  }
}
