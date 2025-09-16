import 'package:donat/smoothie_content.dart';
import 'package:flutter/material.dart';
import 'package:donat/Donut_Content.dart';
import 'FoodMenuPage.dart';

enum FoodTab { smoothie, donut }

// Move _TabButton outside the State class
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
      // Container(
      //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //   decoration: BoxDecoration(
      //     color: isSelected ? Colors.pinkAccent : Colors.white,
      //     borderRadius: BorderRadius.circular(20),
      //   ),
      //   child: Text(
      //     label,
      //     style: TextStyle(
      //       color: isSelected ? Colors.white : Colors.black,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
    );
  }
}

// Minimal implementation for content widgets to make the code runnable
// class SmoothieContent extends StatelessWidget {
//   const SmoothieContent({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: S,
//     );
//   }
// }

class FoodMenuPage extends StatefulWidget {
  const FoodMenuPage({super.key});

  @override
  State<FoodMenuPage> createState() => _FoodMenuPageState();
}

class _FoodMenuPageState extends State<FoodMenuPage> {
  FoodTab _selectedTab = FoodTab.smoothie;

  void _selectTab(FoodTab tab) {
    setState(() {
      _selectedTab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF2F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF2F2),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.black, size: 28),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(), // Corrected call
            const SizedBox(height: 20),
            _buildTabs(), // Corrected call
            const SizedBox(height: 17),
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: _selectedTab == FoodTab.smoothie
                    ? const SmoothieContent()
                    : const DonutContent(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return const Text(
      'I want to eat',
      style: TextStyle(
        color: Colors.black,
        fontSize: 28,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildTabs() {
    return Row(
      children: [
        _TabButton(
          label: 'smothie',
          isSelected: _selectedTab == FoodTab.smoothie,
          onTap: () => _selectTab(FoodTab.smoothie), // Corrected call
        ),
        const SizedBox(width: 16),
        _TabButton(
          label: 'donut',
          isSelected: _selectedTab == FoodTab.donut,
          onTap: () => _selectTab(FoodTab.donut), // Corrected call
        ),
      ],
    );
  }
}
