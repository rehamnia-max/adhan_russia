import 'translation_keys.dart' as translation;

class Ar {
  Map<String, String> get messages => {
        translation.home: 'الصفحة الرئيسية',
        translation.schedulePrayer: 'الصلاة',
        translation.scheduleTime: 'وقت الأذان',
        translation.schedulePassed: "هل انتهت ؟",

        translation.remaining: 'بقي @duration لصلاة',
        translation.fadjr: 'الفجر',
        translation.sunrise: 'الشروق',
        translation.dhuhr: 'الظهر',
        translation.asr: 'العصر',
        translation.maghreb: 'المغرب',
        translation.isha: 'العشاء',
        translation.settings: 'الإعدادات',
        translation.language: 'اللغة :',

        translation.adanNotification: 'تنبيه بالأذان',
        translation.prayerNotification: 'تنبيه بالإقامة',
        translation.mode: 'طريقة حساب الأوقات',
        translation.standard: 'عادي',
        translation.custom: 'مخصص',
        translation.standardDesc:
            "حساب أوقات الصلاة في أي مكان بالعالم، يمكن تعديل طريقة الحساب المتبعة من الإعدادات لاحقا",
        translation.customDesc:
            'حساب أوقات الصلاة بدقة مستخرجة من الجاول التي تعتمدها المساجد الروسية. للآن لدينا فقط بيانات مدينة نيجني نوفغورود الروسية، ساعدنا بالبيانات لتغطية كل المدن الروسية',
        translation.methodButton: "اختر طريقة حساب أخرى",
        translation.dubai: "دبي",
        translation.egyptian: "مصر",
        translation.kuwait: "الكويت",
        translation.karachi: "قرشي",
        translation.moon_sighting_committee: "لجنة مراقبة الأهلة",
        translation.muslim_world_league: "رابطة العالم الإسلامي",
        translation.north_america: "شمال أمريكا",
        translation.qatar: "قطر",
        translation.tehran: "طهران",
        translation.turkey: "تركيا",
        translation.umm_al_qura: "أم القرى",
        translation.other: "آخر",

        translation.notificationOptions: "الإشعارات:",
        // translation.currentLocation: "الموقع الحالي : @location",
        translation.currentLocation: "الموقع الحالي :",
        translation.adanNotificationTitle: 'الآن موعد أذان صلاة @prayer',
        translation.iqamaNotificationTitle: 'الآن موعد إقامة صلاة @prayer',
        translation.otherNotification: 'تنبيهات أخرى',
        translation.about: "حول",
        translation.en: "الإنجليزية",
        translation.ar: "العربية",
        translation.ru: "الروسية",
        translation.loading: "جاري التحميل ...",
        translation.done: "تم",
      };
}
