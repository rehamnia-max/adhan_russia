import 'package:adan_russia/preferences.dart';
import 'package:adan_russia/utils/utils_location.dart';
import 'package:adan_russia/utils/utils_data.dart';
import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> setTimeMode(String mode) async {
  final PreferencesController preferencesController =
      Get.find<PreferencesController>();

  if (mode == "standard") {
    final Coordinates coordinates = await getCoordinates();

    preferencesController.updatePreference("userLocation",
        getCoordinatesAddress(coordinates.latitude, coordinates.longitude));
    //get location address based by giving coordinates
    final String location = await getCoordinatesAddress(
        coordinates.latitude, coordinates.longitude);

    preferencesController.updatePreference("userLocation", location);
  }
  //else custom mode
  else {
    await checkFirstInstallation();
    preferencesController.updatePreference(
        "userLocation", "Nizhny Novgorod, Russia");
  }
  preferencesController.updatePreference("timingMode", mode);
}

void setDefaultLanguage(String? newLanguage) {
  final PreferencesController preferencesController =
      Get.find<PreferencesController>();
  if (newLanguage == "english".tr) {
    Get.updateLocale(const Locale('en', 'US'));

    preferencesController.updatePreference("defaultLanguage", "english");
  } else if (newLanguage == 'arabic'.tr) {
    Get.updateLocale(const Locale('ar', 'ar'));
    preferencesController.updatePreference("defaultLanguage", "arabic");
  } else {
    Get.updateLocale(const Locale('ru', 'RU'));
    preferencesController.updatePreference("defaultLanguage", "russian");
  }
}