import 'package:flutter/material.dart';

class CustomTheme {
  InputDecoration meuInput(String label) {
    return InputDecoration(
      fillColor: Colors.white,
      filled: true,
      labelText: label,
      labelStyle: const TextStyle(color: Colors.blue),
      prefixIcon: const Icon(
        Icons.add_location,
        color: Colors.blue,
      ),
      contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
      border: const OutlineInputBorder(
          borderRadius:
          BorderRadius.all(Radius.circular(5.0))),
      focusedBorder: const OutlineInputBorder(
          borderRadius:
          BorderRadius.all(Radius.circular(5.0))),
      disabledBorder: const OutlineInputBorder(
          borderRadius:
          BorderRadius.all(Radius.circular(5.0))),
    );
  }
}