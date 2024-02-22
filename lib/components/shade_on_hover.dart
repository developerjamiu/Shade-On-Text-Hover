import 'package:flutter/material.dart';
import 'package:shade_on_text_hover_challenge/constants/app_colors.dart';

class ShadeOnHover extends StatefulWidget {
  const ShadeOnHover({
    super.key,
    required this.child,
    this.color = AppColors.lightBlue,
    this.hoverColor = AppColors.darkBlue,
  });

  final Widget child;
  final Color color;
  final Color hoverColor;

  @override
  State<ShadeOnHover> createState() => _ShadeOnHoverState();
}

class _ShadeOnHoverState extends State<ShadeOnHover> {
  bool _isHovered = false;
  Offset _mousePosition = Offset.zero;

  void _toggleHover(bool isHovered) => setState(() => _isHovered = isHovered);

  void _updatePosition(Offset mousePosition) => setState(
        () => _mousePosition = mousePosition,
      );

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _toggleHover(true),
      onExit: (_) => _toggleHover(false),
      onHover: (event) => _updatePosition(event.localPosition),
      child: _isHovered
          ? ShaderMask(
              blendMode: BlendMode.srcATop,
              shaderCallback: (bounds) => RadialGradient(
                colors: [
                  widget.hoverColor,
                  widget.color,
                ],
              ).createShader(
                Rect.fromCircle(
                  center: Offset(_mousePosition.dx, _mousePosition.dy),
                  radius: MediaQuery.sizeOf(context).width * 0.15,
                ),
              ),
              child: widget.child,
            )
          : widget.child,
    );
  }
}
