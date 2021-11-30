import 'dart:convert';

import 'package:json_annotation/json_annotation.dart' as j;
import 'package:drift/drift.dart';

//part '../../data/database.g.dart';

@j.JsonSerializable()
class Preferences {
  bool receiveEmails;
  String selectedTheme;

  Preferences(this.receiveEmails, this.selectedTheme);

  // factory Preferences.fromJson(Map<String, dynamic> json) =>
  //     _$PreferencesFromJson(json);

//  Map<String, dynamic> toJson() => _$PreferencesToJson(this);
}

// stores preferences as strings
class PreferenceConverter extends TypeConverter<Preferences, String> {
  const PreferenceConverter();
  @override
  Preferences? mapToDart(String? fromDb) {
    if (fromDb == null) {
      return null;
    }
   // return Preferences.fromJson(json.decode(fromDb) as Map<String, dynamic>);
  }

  @override
  String? mapToSql(Preferences? value) {
    if (value == null) {
      return null;
    }

  //  return json.encode(value.toJson());
  }
}