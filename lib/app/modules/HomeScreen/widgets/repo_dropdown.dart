import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hangman_game/app/modules/GameScreen/controllers/game_screen_controller.dart';
import 'package:hangman_game/app/modules/HomeScreen/controllers/home_screen_controller.dart';
import 'package:hangman_game/data/repositories/dataRepo.dart';

class RepositoryDropdown extends StatefulWidget {
  final Function(String) onRepositorySelected;

  RepositoryDropdown({required this.onRepositorySelected});

  @override
  _RepositoryDropdownState createState() => _RepositoryDropdownState();
}

class _RepositoryDropdownState extends State<RepositoryDropdown> {
  String? selectedRepository;
  final DataRepo dataRepo = DataRepo();

  @override
  Widget build(BuildContext context) {
    final homeScreenController = Get.find<HomeScreenController>();

    return AnimatedContainer(
      width: Get.width / 2,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: DropdownButtonFormField<String>(
        value: selectedRepository,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        ),
        hint: Text(
          'Select Category',
          style: TextStyle(
            color: Colors.grey[800], // Hint text color
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        dropdownColor: Colors.white,
        icon: Icon(Icons.arrow_drop_down_circle, color: Colors.deepPurple),
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
          color: Colors.black, // Text color of the selected item
          fontSize: 16,
        ),
        items: HomeScreenController()
            .getRepositoryNames()
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: selectedRepository == value
                    ? Colors.deepPurple.withOpacity(0.1)
                    : Colors.transparent,
              ),
              child: Text(
                value,
                style: TextStyle(
                  color: selectedRepository == value
                      ? Colors.deepPurple
                      : Colors.black,
                  fontWeight: selectedRepository == value
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
