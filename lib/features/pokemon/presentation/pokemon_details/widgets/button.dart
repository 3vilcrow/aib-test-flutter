import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;

  final double? paddingVertical;
  final BorderRadiusGeometry? borderRadius;
  final double? paddingHorizontal;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final ButtonStyle? style;
  final FocusNode? focusNode;
  final bool autofocus;
  final Alignment? textAlign;
  final Clip clipBehavior;
  final Widget? child;
  final TextStyle? textStyle;
  final Color? color;
  final Color? textColor;

  const Button({
    Key? key,
    required this.text,
    this.paddingVertical,
    this.paddingHorizontal,
    this.textColor,
    this.textAlign,
    this.textStyle,
    this.borderRadius,
    required this.onPressed,
    this.onLongPress,
    this.style,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
    this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(5),
      ),
      color: color ?? Theme.of(context).colorScheme.primaryContainer,
      onPressed: onPressed,
      child: Row(
        children: [
          FittedBox(
            alignment: textAlign ?? Alignment.center,
            fit: BoxFit.scaleDown,
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
