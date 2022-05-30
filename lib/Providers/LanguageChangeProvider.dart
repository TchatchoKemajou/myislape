import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageChangeProvider with ChangeNotifier{
  SharedPreferences? langueStorage;
  Locale? _currentLocale;
  String _currentLocaleName = "";
  bool _doneLoading = false;

  Locale? get currentLocale => _currentLocale;
  String get currentLocaleName => _currentLocaleName;

  bool get doneLoading => _doneLoading;

  set doneLoading(bool value) {
    _doneLoading = value;
    notifyListeners();
  }

  LanguageChangeProvider(){
    loadLanguage();
  }
  changeLocaleName(String value) {
    _currentLocaleName = value;
    notifyListeners();
  }

  initPreference() async{
    if(langueStorage == null){
      langueStorage = await SharedPreferences.getInstance();
    }else{
    }
  }

  loadLanguage() async {
    await initPreference();
    _currentLocale = Locale(langueStorage!.getString('lang') ?? "fr");
    _currentLocaleName = langueStorage!.getString('langName') ?? "Français";
    notifyListeners();
  }

  setLanguage(String lang, String langName) async {
    await initPreference();
    langueStorage?.setString('lang', lang);
    langueStorage?.setString('langName', langName);
    notifyListeners();
  }

  changeLocale(String _locale, String _localeName){
    _currentLocale = Locale(_locale);
    _currentLocaleName = _localeName;
    notifyListeners();
    setLanguage(_locale, _localeName);
  }

}