
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
  name: 'Pomodoro Friends Group',
  imageUrl: 'assets/images/study1.jpg',
  isOnline: true,
);
final User person3 = User(
  id: 2,
  name: 'Girl Power Study Buddies',
  imageUrl: 'assets/images/study5.jpg',
  isOnline: false,
);
final User person4 = User(
  id: 3,
  name: 'Science Group Chat',
  imageUrl: 'assets/images/study6.jpg',
  isOnline: true,
);
final User person5 = User(
  id: 4,
  name: 'Small Group Pomodoro',
  imageUrl: 'assets/images/study2.jpg',
  isOnline: false,
);
final User person6 = User(
  id: 5,
  name: 'Pomodoro Benilde',
  imageUrl: 'assets/images/study4.jpg',
  isOnline: true,
);
final User person7 = User(
  id: 6,
  name: 'Trio Friends',
  imageUrl: 'assets/images/study7.jpg',
  isOnline: false,
);
final User person8 = User(
  id: 7,
  name: 'Fwends Study Buddies',
  imageUrl: 'assets/images/study3.jpg',
  isOnline: true,
);