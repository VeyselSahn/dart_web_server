import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'model.g.dart';

@JsonSerializable()
class Model {
  String? id;
  String? name;
  @JsonKey(name: 'photo_url')
  String? photoUrl;
  int? age;

  Model({this.id, this.name, this.photoUrl, this.age});

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);

  Map<String, dynamic> toJson() => _$ModelToJson(this);

  factory Model.updateUser(Map<String, dynamic> newUser, Map<String, dynamic> currentUser) {
    return Model(
        id: currentUser['id'],
        age: newUser['age'] ?? currentUser['age'],
        name: newUser['name'] ?? currentUser['name'],
        photoUrl: newUser['photo_url'] ?? currentUser['photo_url']);
  }
}
