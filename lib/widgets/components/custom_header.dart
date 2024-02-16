import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    required this.context,
    required this.title,
    required this.style,
    required this.backgroundColor,
  });

  final BuildContext context;
  final String title;
  final TextStyle? style;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: style ??
              const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
