import 'package:beehive_app/SocialModel/user_model.dart';

class Message {
  final User sender;
  final String time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.unread,
  });
}

//home screen
List<Message> chats = [
  Message(
    sender: person2,
    time: '5:30 PM',
    text: 'Hey! What are you up to?',
    unread: true,
  ),
  Message(
    sender: person3,
    time: '4:30 PM',
    text: 'Have you done your assignment?',
    unread: true,
  ),
  Message(
    sender: person4,
    time: '3:30 PM',
    text: 'WOW! Youre so determined',
    unread: false,
  ),
  Message(
    sender: person5,
    time: '2:30 PM',
    text: 'Do you need help with anything?',
    unread: true,
  ),
  Message(
    sender: person6,
    time: '1:30 PM',
    text: 'Hi',
    unread: false,
  ),
  Message(
    sender: person7,
    time: '12:30 PM',
    text: 'Yo! Lets do the pomodoro together!',
    unread: false,
  ),
  Message(
    sender: person8,
    time: '11:30 AM',
    text: 'Hey thank you for helping me out!',
    unread: false,
  ),
];


//chat screen
List<Message> messages = [
  Message(
    sender: person3,
    time: '5:30 PM',
    text: 'Have you done your assignment?',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Im currently working on it. How bout you?',
    unread: true,
  ),
  Message(
    sender: person3,
    time: '3:45 PM',
    text: 'Started just a few minutes ago!',
    unread: true,
  ),
  Message(
    sender: person3,
    time: '3:15 PM',
    text: 'I need help with a few things though',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'We can work on it together if you want? Ill make a Pomodoro group for us',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Done making it already!',
    unread: true,
  ),
  Message(
    sender: person3,
    time: '2:30 PM',
    text: 'Yay thank you! We got this!',
    unread: true,
  ),
];
