import 'package:flutter/material.dart';

class SideBarCondent extends StatelessWidget {
  final bool isSelected;
  final int selectedIndex;
  final int index;
  final VoidCallback function;
  final String text;
  final IconData icon;
  const SideBarCondent({
    super.key,
    required this.function,
    required this.text,
    required this.icon, required this.isSelected, required this.selectedIndex, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: SizedBox(
        height: 40,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, color: isSelected && selectedIndex == index ? Colors.white : Colors.black),
            const SizedBox(width: 15),
            Text(text, style:  TextStyle( color: isSelected && selectedIndex == index ? Colors.white : Colors.black)),
          ],
        ),
      ),
    );
  }
}
