import 'package:flutter/material.dart';

class DropDownFormField extends StatefulWidget {
  const DropDownFormField({
    super.key,
    required String ilSec,
    required onChanged,
    required bolge,
  })  : _ilSec = ilSec,
        onChanged = onChanged,
        bolge = bolge;

  final String _ilSec;
  final onChanged;
  final bolge;

  @override
  State<DropDownFormField> createState() => _DropDownFormFieldState();
}

class _DropDownFormFieldState extends State<DropDownFormField> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        dropdownColor: Colors.green.shade50,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            label: Text(widget._ilSec),
            prefixIcon: Icon(Icons.send)),
        items: widget.bolge.toList(),
        onChanged: widget.onChanged);
  }
}
