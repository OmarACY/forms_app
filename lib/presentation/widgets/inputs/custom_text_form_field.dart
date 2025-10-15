import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(borderRadius: BorderRadius.circular(40));

    return TextFormField(
      onChanged: (value) {
        //print('Value: $value');
      },
      validator: (value) {
        if (value == null || value.isEmpty || value.trim().isEmpty) {
          return 'Campo requerido';
        }

        return null;
      },
      decoration: InputDecoration(
        enabledBorder: border,
        focusedBorder: border.copyWith(
          borderSide: BorderSide(color: colors.primary),
        ),
      ),
    );
  }
}
