import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wise_app/core/style/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? helper;
  final double? paddingTop;
  final double? paddingBottom;
  final bool isRequired;
  final int? maxLines;
  final int? minLines;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextCapitalization textCapitalization;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputFormatter? inputFormatter;
  final void Function(String? value)? onChanged;
  final String? Function(String? value)? validator;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onEditingComplete;

  const CustomTextField({
    super.key,
    this.label,
    this.hint,
    this.helper,
    this.paddingTop,
    this.paddingBottom,
    this.isRequired = true,
    this.maxLines = 1,
    this.minLines,
    this.controller,
    this.focusNode,
    this.textCapitalization = TextCapitalization.none,
    this.textInputType,
    this.textInputAction,
    this.inputFormatters,
    this.inputFormatter,
    this.onChanged,
    this.validator,
    this.onFieldSubmitted,
    this.onEditingComplete
  });

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      if(paddingTop != null) SizedBox(height: paddingTop),
      if(label != null) ...[
        IntrinsicWidth(
          child: Row(
            children: [
              Expanded(
                child: Text(
                  label!,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              if(isRequired) const Text(
                "*",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.red,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 2),
      ],
      TextFormField(
        textCapitalization: textCapitalization,
        keyboardType: textInputType,
        textInputAction: textInputAction,
        maxLines: maxLines,
        minLines: minLines,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        onEditingComplete: onEditingComplete,
        validator: validator,
        controller: controller,
        focusNode: focusNode,
        inputFormatters: inputFormatters ?? [if(inputFormatter != null) inputFormatter!],
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hint,
          hintStyle: const TextStyle(fontSize: 14, color: AppColors.grey),
          helperText: helper,
          helperStyle: const TextStyle(color: AppColors.grey),
          helperMaxLines: 4,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: maxLines == null ? 10.0 : 0.0
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      if(paddingBottom != null) SizedBox(height: paddingBottom),
    ],
  );
}
