// import 'dart:developer' as dev;

// import 'package:flutter/foundation.dart';

// int compareTime(DateTime oldScanTime, DateTime newScanTime) {
//   Duration difference = newScanTime.difference(oldScanTime);

//   return (difference.inMinutes).toInt();
// }

// String? messageSetter(String text, String type) {
//   switch (type) {
//     case "User Name":
//       return validateName(text);
//     // case "Nick Name":
//     //   return validateName(text);
//     case "Email":
//       return validateEmail(text);

//     case "Organization Name":
//       return validateAddress(text);

//     case "Mobile Number":
//       return validateMobile(text);

//     // case "State":
//     //   return validateDistrict(text);
//     // case "City":
//     //   return validateCity(text);

//     default:
//       return textValidation(text, type);
//   }
// }

// void printer(String value) {
//   if (kDebugMode) {
//     dev.log(value);
//   }
// }

// String? textValidation(String value, String type) {
//   if (value.trim().isEmpty) {
//     return 'Please enter the $type.';
//   }
//   // Check if the entered name has the right format
//   if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
//     return 'Please enter a valid $type.';
//   }
//   // Return null if the entered name is valid
//   return null;
// }

// int timeSetter(DateTime oldScanTime, int waitTime) {
//   Duration difference = DateTime.now().difference(oldScanTime);
//   Duration wait = Duration(minutes: waitTime);
//   return (wait.inSeconds - difference.inSeconds).isNegative
//       ? 1
//       : (wait.inSeconds - difference.inSeconds);
// }

// String? validateAddress(String value) {
//   if (value.trim().isEmpty) {
//     return 'Please enter the Organization Name.';
//   }
//   // if (value.trim().length < 4) {
//   //   return 'Organization Name must be at least 10 characters in length.';
//   // }
//   // Return null if the entered username is valid
//   return null;
// }

// String? validateCity(String value) {
//   if (value.trim().isEmpty) {
//     return 'Please select city.';
//   }
//   // Check if the entered name has the right format
//   // if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value)) {
//   //   return 'Please enter a valid district.';
//   // }
//   // Return null if the entered name is valid
//   return null;
// }

// String? validateContactName(String value) {
//   if (value.trim().isEmpty) {
//     return 'Please enter contact name.';
//   }

//   /// Check if the entered name has the right format
//   if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
//     return 'Please enter a valid name.';
//   }

//   /// Return null if the entered name is valid
//   return null;
// }

// String? validateDistrict(String value) {
//   if (value.trim().isEmpty) {
//     return 'Please enter the State.';
//   }
//   // Check if the entered name has the right format
//   if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value)) {
//     return 'Please enter a valid State.';
//   }
//   // Return null if the entered name is valid
//   return null;
// }

// String? validateEmail(String value) {
//   if (value.trim().isEmpty) {
//     return 'Please enter your email address.';
//   }
//   // Check if the entered email has the right format
//   if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
//     return 'Please enter a valid email address';
//   }
//   // Return null if the entered email is valid
//   return null;
// }

// String? validateGSTNumber(String value) {
//   if (value.trim().isEmpty) {
//     // return 'Please enter the GST Number.';
//     return null;
//   }
//   // Check if the entered name has the right format

//   if (value.trim().isNotEmpty &&
//       !RegExp(r'^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}[Z]{1}[0-9A-Z]{1}$')
//           .hasMatch(value)) {
//     return 'Please enter a valid GST Number.';
//   }

//   // Return null if the entered name is valid
//   return null;
// }

// String? validateLatitude(String value) {
//   if (value.trim().isEmpty) {
//     return 'Missing.';
//   }
//   // Check if the entered name has the right format
//   if (double.parse(value).abs() > 90) {
//     return 'Invalid.';
//   }
//   // Return null if the entered name is valid
//   return null;
// }

// String? validateLongitude(String value) {
//   if (value.trim().isEmpty) {
//     return 'Missing.';
//   }
//   // Check if the entered name has the right format
//   if (double.parse(value).abs() > 180) {
//     return 'Invalid.';
//   }
//   // Return null if the entered name is valid
//   return null;
// }

// String? validateMobile(String value) {
//   String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
//   RegExp regExp = RegExp(patttern);
//   if (value.isEmpty) {
//     return 'Please enter the mobile number';
//   } else if (!regExp.hasMatch(value)) {
//     return 'Please enter a valid mobile number';
//   }
//   return null;
// }

// String? validateName(String value) {
//   if (value.trim().isEmpty) {
//     return 'Please enter the name.';
//   }

//   /// Check if the entered name has the right format
//   if (RegExp(r'''[']''').hasMatch(value)) {
//     return 'Please enter a valid name.';
//   }

//   ///Return null if the entered name is valid
//   return null;
// }

// String? validatePassword(String value) {
//   RegExp regex =
//       RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{4,}$');
//   if (value.trim().isEmpty) {
//     return 'Please enter the password.';
//   } else {
//     if (!regex.hasMatch(value)) {
//       return 'Enter a valid password.';
//     } else {
//       return null;
//     }
//   }
// }

// String? validateUsername(String value) {
//   if (value.trim().isEmpty) {
//     return 'Please enter the User ID.';
//   }
//   if (value.trim().length < 4) {
//     return 'Username must be at least 4 characters in length.';
//   }
//   // Return null if the entered username is valid
//   return null;
// }

// class DistanceTime {
//   final double distanceInMeters;
//   final int timeInterval;

//   DistanceTime(this.distanceInMeters, this.timeInterval);
// }
