import 'dart:html';

class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    this.id,
    this.name,
    this.imageUrl,
    this.isOnline,
  });
}
//YOU-current user
final User currentUser = User(
  id: 0,
  name: 'Christi Corpus',
  imageUrl: 'assets/images/person1.jpg',
  isOnline: true,
);

//USERS

final User person2 = User(
  id: 1,
  name: 'Monina Salamanca',
  imageUrl: 'assets/images/person2.jpg',
  isOnline: true,
);
final User person3 = User(
  id: 2,
  name: 'Fidel Rillon',
  imageUrl: 'assets/images/person3.jpg',
  isOnline: false,
);
final User person4 = User(
  id: 3,
  name: 'Louise Agustin',
  imageUrl: 'assets/images/person4.jpg',
  isOnline: true,
);
final User person5 = User(
  id: 4,
  name: 'Eruela Ursua',
  imageUrl: 'assets/images/person5.jpg',
  isOnline: false,
);
final User person6 = User(
  id: 5,
  name: 'Savannah Parker',
  imageUrl: 'assets/images/person6.jpg',
  isOnline: true,
);
final User person7 = User(
  id: 6,
  name: 'Summer Smith',
  imageUrl: 'assets/images/person7.jpg',
  isOnline: false,
);
final User person8 = User(
  id: 7,
  name: 'Winter Santiago',
  imageUrl: 'assets/images/person8.jpg',
  isOnline: true,
);