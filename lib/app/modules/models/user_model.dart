// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:mobx/mobx.dart';

class UserModel {


  @observable
  String? email;

  @observable
  String? pass;

  @observable
  String? name;
  UserModel({
    this.email,
    this.pass,
    this.name,
  });


  UserModel copyWith({
    String? email,
    String? pass,
    String? name,
  }) {
    return UserModel(
      email: email ?? this.email,
      pass: pass ?? this.pass,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'pass': pass,
      'name': name,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'] != null ? map['email'] as String : null,
      pass: map['pass'] != null ? map['pass'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserModel(email: $email, pass: $pass, name: $name)';

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.email == email &&
      other.pass == pass &&
      other.name == name;
  }

  @override
  int get hashCode => email.hashCode ^ pass.hashCode ^ name.hashCode;
}
