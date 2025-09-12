import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:bookstar/gen/colors.gen.dart';

class Input1 extends StatefulWidget {
  final String? label;
  final String? hintText;
  final String? value;
  final bool enabled;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  const Input1({
    super.key,
    this.label,
    this.hintText,
    this.value,
    this.enabled = true,
    this.onChanged,
    this.onTap,
    this.controller,
    this.focusNode,
    this.keyboardType,
    this.inputFormatters,
  });

  @override
  State<Input1> createState() => _Input1State();
}

class _Input1State extends State<Input1> {
  bool _isHovered = false;
  bool _isFocused = false;
  late TextEditingController _controller;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller =
        widget.controller ?? TextEditingController(text: widget.value);
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildLabel(),
          _buildInputArea(),
        ],
      ),
    );
  }

  Widget _buildLabel() {
    if (widget.label == null) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label!,
          style: AppTexts.b10.copyWith(color: _getBottomLineColor()),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildInputArea() {
    return GestureDetector(
      onTap: widget.enabled ? widget.onTap : null,
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTextField(),
            const SizedBox(height: 3),
            _buildBottomLine(),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField() {
    return Container(
      width: double.infinity,
      child: Stack(
        children: [
          _buildHintText(),
          _buildInputField(),
          _buildDefaultHint(),
        ],
      ),
    );
  }

  Widget _buildHintText() {
    if (widget.hintText == null) {
      return const SizedBox.shrink();
    }

    return Positioned(
      left: 0,
      right: 0,
      bottom: 4,
      child: Text(
        _controller.text.isNotEmpty
            ? '${_controller.text} ${widget.hintText!}'
            : widget.hintText!,
        style: AppTexts.h1.copyWith(
          color: _controller.text.isNotEmpty
              ? (widget.enabled ? ColorName.w1 : ColorName.g7)
              : ColorName.g7,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _buildInputField() {
    return TextField(
      controller: _controller,
      focusNode: _focusNode,
      enabled: widget.enabled,
      keyboardType: widget.keyboardType,
      inputFormatters: widget.inputFormatters,
      style: AppTexts.h1.copyWith(
        color: Colors.transparent,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.zero,
        filled: false,
        fillColor: Colors.transparent,
        isDense: true,
      ),
      onChanged: widget.onChanged,
    );
  }

  Widget _buildDefaultHint() {
    if (widget.hintText == null || _controller.text.isNotEmpty || _isFocused) {
      return const SizedBox.shrink();
    }

    return const SizedBox.shrink();
  }

  Widget _buildBottomLine() {
    return Container(
      width: double.infinity,
      height: 2,
      decoration: BoxDecoration(
        color: _getBottomLineColor(),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }

  Color _getBottomLineColor() {
    if (!widget.enabled) return ColorName.g3;
    if (_isFocused) return ColorName.p1;
    if (_isHovered) return ColorName.p2;
    return ColorName.p1;
  }
}
