import 'package:flutter/material.dart';

class SideBarCondent extends StatelessWidget {
  final VoidCallback function;
  final String text;
  final IconData icon;
  const SideBarCondent({
    super.key,
    required this.function,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: SizedBox(
        height: 40,
        width: double.infinity,
        // color: const Color.fromARGB(255, 90, 75, 226),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 15),
            Text(text, style: const TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
