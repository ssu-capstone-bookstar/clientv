import 'package:book/common/theme/app_style.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/reading_challenge/model/challenge_response.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class OngoingChallengeCard extends StatelessWidget {
  final ChallengeResponse challenge;
  final bool isSelectionMode;
  final bool isSelected;

  const OngoingChallengeCard({
    required this.challenge,
    this.isSelectionMode = false,
    this.isSelected = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl: challenge.book.thumbnailUrl,
              fit: BoxFit.cover,
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            // Gradient for text readability
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.8),
                    ],
                    stops: const [0.6, 0.8, 1.0],
                  ),
                ),
              ),
            ),
            // Title text
            Positioned(
              bottom: 8,
              left: 8,
              right: 8,
              child: Text(
                challenge.book.title,
                style: AppTexts.b7.copyWith(color: Colors.white),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (isSelectionMode)
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                color: isSelected
                    ? Colors.black.withOpacity(0.5)
                    : Colors.transparent,
                child: isSelected
                    ? const Icon(
                        Icons.check_circle,
                        color: Colors.white,
                        size: 24,
                      )
                    : null,
              ),
          ],
        ),
      ),
    );
  }
}
