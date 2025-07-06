import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final String label;
  final bool isPassword;
  final bool? canInputText;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;

  const CustomInput({
    required this.label,
    this.canInputText,
    this.textStyle,
    this.hintStyle,
    this.isPassword = false,
    super.key,
  });

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  final TextEditingController _controller = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(context) {
    return Expanded(
      child: TextField(
        style: widget.textStyle ??
            Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
        enabled: widget.canInputText ?? true,
        controller: _controller,
        obscureText: widget.isPassword ? _obscureText : false,
        decoration: InputDecoration(
          hintText: widget.label,
          hintStyle: widget.hintStyle ??
              TextStyle(
                color: Colors.grey.shade400.withOpacity(0.7),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
