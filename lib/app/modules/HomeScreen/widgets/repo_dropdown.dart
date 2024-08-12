import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hangman_game/app/modules/HomeScreen/controllers/home_screen_controller.dart';

class RepositoryDropdown extends StatefulWidget {
  final Function(String) onRepositorySelected;

  RepositoryDropdown({required this.onRepositorySelected});

  @override
  _RepositoryDropdownState createState() => _RepositoryDropdownState();
}

class _RepositoryDropdownState extends State<RepositoryDropdown>
    with SingleTickerProviderStateMixin {
  String? selectedRepository;
  AnimationController? _animationController;
  Animation<double>? _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _scaleAnimation = Tween<double>(begin: 0.9, end: 1.0).animate(
        CurvedAnimation(parent: _animationController!, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final homeScreenController = Get.find<HomeScreenController>();

    return ScaleTransition(
      scale: _scaleAnimation!,
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        width: Get.width / 2,
        decoration: BoxDecoration(
          color: Colors.black87, // Dark background color
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.5),
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: DropdownButtonFormField<String>(
          alignment: Alignment.center,
          value: selectedRepository,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.transparent, // Dark background for the dropdown
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                  // color: Colors.deepOrange.withOpacity(0.8),
                  // width: 1.5,
                  ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                  // color: Colors.deepOrange.withOpacity(0.5),
                  // width: 1,
                  ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                // color: Colors.redAccent,
                width: 2,
              ),
            ),
          ),
          hint: Text(
            'Select Category',
            style: TextStyle(
              color: Colors.white70, // Light text color for hint
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          dropdownColor: Colors.black87, // Dark background for dropdown items
          icon: Icon(Icons.arrow_drop_down, color: Colors.deepOrange),
          onChanged: (String? newValue) {
            setState(() {
              selectedRepository = newValue;
              homeScreenController.selectedRepository.value = newValue ?? "";
              debugPrint(
                  "selectedRepository: ${homeScreenController.selectedRepository.value}");
            });
            widget.onRepositorySelected(newValue!);
          },
          style: TextStyle(
            color: Colors.white, // Light text color for selected item
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          items: homeScreenController
              .getRepositoryNames()
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Center(
                // Align the text to center
                child: FadeTransition(
                  opacity: _animationController!,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    child: Text(
                      value,
                      style: TextStyle(
                        color: Colors.white, // Light text color for items
                        fontSize: 16,
                        fontWeight: selectedRepository == value
                            ? FontWeight.w700
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
          onTap: () {
            _animationController
                ?.forward(); // Play the scale animation when dropdown opens
          },
        ),
      ),
    );
  }
}
