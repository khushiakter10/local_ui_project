import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SignupScreenProvider with ChangeNotifier {
  // Controllers for text input fields
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController selectedDateController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  void dispose() {
    // Dispose of controllers to prevent memory leaks
    nameController.dispose();
    emailController.dispose();
    selectedDateController.dispose();
    ageController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  // Tracks the selected gender
  String _selectedGender = "";

  String get selectedGender => _selectedGender;

  void selectGender(String gender) {
    _selectedGender = gender;
    notifyListeners(); // Notify listeners to update UI
  }

  /// Select Date of Birth
  Future<void> selectDateOfBirth(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      // Update the selected date in the text field
      selectedDateController.text = DateFormat('dd/MM/yyyy').format(pickedDate);

      // Calculate and update the age
      int age = calculateAge(pickedDate);
      ageController.text = age.toString(); // Update the age field
      notifyListeners(); // Notify listeners about the change
    }
  }

  /// Calculate Age Automatically when Date of Birth is selected
  int calculateAge(DateTime birthDate) {
    DateTime today = DateTime.now();
    int age = today.year - birthDate.year;

    // Adjust age if the birth date hasn't occurred yet this year
    if (today.month < birthDate.month ||
        (today.month == birthDate.month && today.day < birthDate.day)) {
      age--;
    }
    return age;
  }
}





// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class OnboardingScreenThreeProvider with ChangeNotifier {
//   TextEditingController firstNameController = TextEditingController();
//   TextEditingController lastNameController = TextEditingController();
//   TextEditingController selectedDateController = TextEditingController();
//   TextEditingController ageController = TextEditingController();

//   @override
//   void dispose() {
//     firstNameController.dispose();
//     lastNameController.dispose();
//     super.dispose();
//   }

//   String _selectedGender = ""; // Tracks the selected gender

//   String get selectedGender => _selectedGender;

//   void selectGender(String gender) {
//     _selectedGender = gender;
//     notifyListeners(); // Notifies widgets listening to this provider
//   }

//   ///Select Date of Birth
//   Future<void> selectDateOfBirth(BuildContext context) async {
//     final DateTime? pickedDate = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(1900),
//       lastDate: DateTime.now(),
//     );

//     if (pickedDate != null) {
//       // Update the selected date
//       selectedDateController.text = DateFormat('MM/dd/yyyy').format(pickedDate);

//       // Calculate and update age
//       int age = calculateAge(pickedDate);
//       ageController.text =
//           age.toString(); // Assuming lastNameController is used for age
//       notifyListeners();
//     }
//   }

//   ///Calucualte Age Automatically when Date of Birth is selected
//   int calculateAge(DateTime birthDate) {
//     DateTime today = DateTime.now();
//     int age = today.year - birthDate.year;

//     // Adjust age if the birth date hasn't occurred yet this year
//     if (today.month < birthDate.month ||
//         (today.month == birthDate.month && today.day < birthDate.day)) {
//       age--;
//     }
//     return age;
//   }
// }
