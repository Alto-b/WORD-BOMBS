// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'dart:ui'; // Import for BackdropFilter

import 'package:word_bomb/app/modules/HomeScreen/controllers/home_screen_controller.dart';

class RepositoryDropdown extends StatefulWidget {
  final Function(String) onRepositorySelected;

  const RepositoryDropdown({super.key, required this.onRepositorySelected});

  @override
  _RepositoryDropdownState createState() => _RepositoryDropdownState();
}

class _RepositoryDropdownState extends State<RepositoryDropdown>
    with SingleTickerProviderStateMixin {
  String? selectedRepository;
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _scaleAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _showCustomDropdownDialog(BuildContext context) {
    final homeScreenController = Get.find<HomeScreenController>();

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        _animationController.forward(); // Start the animation when dialog opens
        return Center(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Material(
              color: Colors.transparent,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: Container(
                  width: Get.width * 0.8, // Slightly wider dialog
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.withOpacity(0.8),
                        blurRadius: 3,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight:
                          Get.height * 0.7, // Increased height of the dialog
                    ),
                    child: Scrollbar(
                      thumbVisibility: true,
                      showTrackOnHover: true,
                      thickness: 6,
                      radius: const Radius.circular(10),
                      interactive: true,
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: homeScreenController
                              .getRepositoryNames()
                              .map<Widget>((String value) {
                            return ListTile(
                              title: Text(
                                value,
                                style: TextStyle(
                                  color: selectedRepository == value
                                      ? Colors.pink
                                      : Colors.white,
                                  fontSize:
                                      selectedRepository == value ? 18 : 14,
                                  fontWeight: selectedRepository == value
                                      ? FontWeight.w900
                                      : FontWeight.w500,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  selectedRepository = value;
                                  homeScreenController
                                      .selectedRepository.value = value;
                                });
                                widget.onRepositorySelected(value);
                                Navigator.of(context).pop();
                              },
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    ).then((_) {
      _animationController
          .reverse(); // Reverse the animation when dialog closes
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showCustomDropdownDialog(context),
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        width: Get.width / 1.5,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                selectedRepository ?? 'Select Category',
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Icon(Icons.arrow_drop_down, color: Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}
