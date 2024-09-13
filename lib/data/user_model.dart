// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  String? image;
  String? name;
  String? titleJop;
  int? age;

  UserModel({
    this.image,
    this.name,
    this.titleJop,
    this.age,
  });

  static List<UserModel> userModel = [
    UserModel(
        image: 'assets/image/person1.jpg',
        name: 'moe',
        titleJop: 'programer1',
        age: 22),
    UserModel(
        image: 'assets/image/person2.jpg',
        name: 'bob',
        titleJop: 'programer2',
        age: 27),
    UserModel(
        image: 'assets/image/person3.jpg',
        name: 'sergio',
        titleJop: 'programer3',
        age: 25),
  ];
}
