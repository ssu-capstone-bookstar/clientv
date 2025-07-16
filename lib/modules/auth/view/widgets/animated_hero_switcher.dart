import 'package:flutter/material.dart';

class ImageFrame {
  final Widget image;
  final Duration duration;

  ImageFrame(this.image, this.duration);
}

class AnimatedHeroSwitcher extends StatefulWidget {
  final List<ImageFrame> frames;
  final bool loopReversing;

  const AnimatedHeroSwitcher({
    super.key,
    required this.frames,
    this.loopReversing = false,
  }) : assert(frames.length >= 2);

  @override
  State<AnimatedHeroSwitcher> createState() => _AnimatedHeroSwitcherState();
}

class _AnimatedHeroSwitcherState extends State<AnimatedHeroSwitcher> {
  int _currentIndex = 0;
  bool _isReversing = false;

  @override
  void initState() {
    super.initState();
    _startSwitching();
  }

  void _startSwitching() async {
    while (mounted) {
      await Future.delayed(widget.frames[_currentIndex].duration);

      setState(() {
        if (widget.loopReversing) {
          if (_isReversing) {
            _currentIndex--;
            if (_currentIndex == 0) _isReversing = false;
          } else {
            _currentIndex++;
            if (_currentIndex == widget.frames.length - 1) {
              _isReversing = true;
            }
          }
        } else {
          _currentIndex = (_currentIndex + 1) % widget.frames.length;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration.zero,
      transitionBuilder: (child, animation) =>
          FadeTransition(opacity: animation, child: child),
      child: KeyedSubtree(
        key: ValueKey(_currentIndex),
        child: widget.frames[_currentIndex].image,
      ),
    );
  }
}
