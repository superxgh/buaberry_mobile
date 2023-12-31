import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class UJGDropDownList extends StatelessWidget {
  final Color? textColor;
  final Color? hintColor;
  final Color? backgroundColor;
  final String? selectedItem;
  final String? hint;
  final List<String> selectedList;
  final void Function(String?)? onChanged;
  const UJGDropDownList(
      {super.key, required this.selectedList, this.hint, this.textColor, this.backgroundColor, this.hintColor, this.onChanged, this.selectedItem});

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
      selectedItem: selectedItem,
      items: selectedList,
      dropdownDecoratorProps: DropDownDecoratorProps(
        baseStyle: TextStyle(color: textColor ?? Colors.white),
        dropdownSearchDecoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(4.0))),
            hintText: hint ?? "Select...",
            hintStyle: TextStyle(color: hintColor ?? Colors.black),
            filled: true,
            fillColor: backgroundColor ?? Colors.black),
      ),
      onChanged: onChanged ?? (value) {},
    );
  }
}
