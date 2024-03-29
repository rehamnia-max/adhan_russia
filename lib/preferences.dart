import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesController extends GetxController {
  RxString timingMode = ''.obs;

//PrayerSchedule
  RxString calendarYear = ''.obs;
  RxString calendarMonth = ''.obs;

  RxString locale = ''.obs;
  RxDouble positionLatitude = 0.0.obs;
  RxDouble positionLongitude = 0.0.obs;

  // RxString username = ''.obs;
  // RxString theme = 'light'.obs;

  @override
  void onInit() {
    super.onInit();
    // Load preferences when the controller is initialized
    loadPreferences();
  }

  Future<void> loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    timingMode.value = prefs.getString('timingMode') ?? '';
    calendarYear.value = prefs.getString('calendarYear') ?? '';

    calendarMonth.value = prefs.getString('calendarYear') ?? '';

    locale.value = prefs.getString('locale') ?? '';
    this.positionLatitude.value = prefs.getDouble('positionLatitude') ?? 0.0;
    this.positionLongitude.value = prefs.getDouble('positionLongitude') ?? 0.0;
  }

  Future<void> updatePreference(String prefName, var value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(prefName, value);
    switch (prefName) {
      case "timingMode":
        timingMode.value = value;
        break;
      case "calendarYear":
        calendarYear.value = value;
        break;
      case "calendarMonth":
        calendarMonth.value = value;
        break;
      case "locale":
        locale.value = value;
        break;
      case "positionLatitude":
        positionLatitude.value = value;
        break;
      case "positionLongitude":
        positionLongitude.value = value;
        break;
    }
  }
}
