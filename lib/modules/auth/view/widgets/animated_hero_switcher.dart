import 'package:flutter/material.dart';

class AnimatedHeroSwitcher extends StatefulWidget {
  final List<String> imagePaths;
  final Duration interval;
  final double imageScale;

  const AnimatedHeroSwitcher({
    super.key,
    required this.imagePaths,
    this.interval = const Duration(seconds: 3),
    this.imageScale = 3.0,
  }) : assert(imagePaths.length >= 2, 'At least two image paths are required');

  @override
  State<AnimatedHeroSwitcher> createState() => _AnimatedHeroSwitcherState();
}

class _AnimatedHeroSwitcherState extends State<AnimatedHeroSwitcher> {
  int _currentIndex = 0;
  bool _isFirstFrame = true;
  bool _didPrecache = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _isFirstFrame = false;
      });
    });
    _startSwitching();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_didPrecache) {
      for (final path in widget.imagePaths) {
        precacheImage(AssetImage(path), context);
      }
      _didPrecache = true;
    }
  }

  void _startSwitching() {
    Future.doWhile(() async {
      await Future.delayed(widget.interval);
      if (!mounted) return false;
      setState(() {
        _currentIndex = (_currentIndex + 1) % widget.imagePaths.length;
      });
      return true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final image = Image.asset(
      widget.imagePaths[_currentIndex],
      key: ValueKey(widget.imagePaths[_currentIndex]),
      scale: widget.imageScale,
    );

    if (_isFirstFrame) {
      return image;
    }

    return AnimatedSwitcher(
      duration: Duration.zero,
      transitionBuilder: (child, animation) =>
          FadeTransition(opacity: animation, child: child),
      child: image,
    );
  }
}

