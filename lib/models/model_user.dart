class ModelUser {
  ModelUser({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  final int id;
  final String email;
  final String firstName;
  final String lastName;

  ModelUser copyWith({
    int? id,
    String? email,
    String? firstName,
    String? lastName,
  }) =>
      ModelUser(
        id: id ?? this.id,
        email: email ?? this.email,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
      );

  factory ModelUser.fromJson(Map<String, dynamic> json) => ModelUser(
        id: json["id"] ?? '',
        email: json["email"] ?? '',
        firstName: json["first_name"] ?? '',
        lastName: json["last_name"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
      };

  @override
  String toString() {
    return "Email: $email, first_name: $firstName, last_name: $lastName";
  }
}
