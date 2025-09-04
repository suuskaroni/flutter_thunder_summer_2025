import 'package:flutter/material.dart';
class _TabButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _TabButton({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: onTap,
        child: Container(
          width: 160,
          height: 53,
          decoration: ShapeDecoration(
            color: isSelected ? const Color(0xFFC0DBFF) : Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shadows: isSelected
                ? [
              BoxShadow(
                color: Colors.blue.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ]
                : [],
          ),
          child: Center(
            child: Text(label, style: const TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontFamily: 'Nunito-Regular',
              fontWeight: FontWeight.w800,
            ),),
          ),
        ),
      );
  }
}