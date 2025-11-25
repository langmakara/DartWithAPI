


class Person {
  String? firstName;
  String? lastName;
  String? username;
  int? age;
  String? gender;
  String? address;
  String? phoneNumber;

  Person(this.username, this.age, this.gender, {this.address, this.phoneNumber});
  String getFullName() {
    return '$firstName $lastName';
  }

  String? getUsername() {
    return username;
  }

  String? getInfo() {
    return 'Username: $username, Age: $age, Gender: $gender, Address: $address, Phone: $phoneNumber';
  }

}
