import 'package:chat_app/models/chatter.dart';
import 'package:chat_app/models/profile.dart';

enum messageType {
  sent,
  received,
}

//We should use models. It's better than that but no problem, lazy man.

const DUMMY_CHATTERS_LIST = const [
  Chatter(
      imgUrl:
          'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-0/p640x640/80577611_1039362183063741_8564248982467903488_o.jpg?_nc_cat=108&_nc_ohc=aovZ4AyQfOEAX8hG-B6&_nc_ht=scontent-hbe1-1.xx&_nc_tp=1002&oh=bfa93e7b4a33863a59b6a9c583d1e18f&oe=5E9A804A',
      username: 'Tarek Alabd',
      lastMsg: 'Hey, this is Tarek here, how are you?',
      hasSeen: true,
      hasUnSeenMsg: false,
      unSeenNum: 0,
      lastMsgTime: '8:30',
      isOnline: true),
  Chatter(
      imgUrl:
          'https://www.kindpng.com/picc/m/355-3557482_flutter-logo-png-transparent-png.png',
      username: 'Flutter Dev',
      lastMsg: 'Hey, this is Tarek here, how are you?',
      hasSeen: false,
      hasUnSeenMsg: false,
      unSeenNum: 0,
      lastMsgTime: '8:30',
      isOnline: false),
  Chatter(
      imgUrl:
          'https://pbs.twimg.com/profile_images/993555605078994945/Yr-pWI4G_400x400.jpg',
      username: 'Dart Dev',
      lastMsg: 'Hey, this is Tarek here, how are you?',
      hasSeen: false,
      hasUnSeenMsg: true,
      unSeenNum: 3,
      lastMsgTime: '8:30',
      isOnline: true),
  Chatter(
      imgUrl: 'https://pbs.twimg.com/media/D22N_huX4AEbb1y.jpg',
      username: 'GDG Damanhour',
      lastMsg: 'Hey, this is Tarek here, how are you?',
      hasSeen: true,
      hasUnSeenMsg: true,
      unSeenNum: 2,
      lastMsgTime: '8:30',
      isOnline: true),
  Chatter(
      imgUrl:
          'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/p960x960/57374802_848844595448835_955623935527878656_o.jpg?_nc_cat=108&_nc_ohc=tG28oOplC-YAX98GVvE&_nc_ht=scontent-hbe1-1.xx&_nc_tp=1002&oh=7c3538ef253caf3ef6d838a30b3f6148&oe=5E9DB450',
      username: 'Let\'s do it',
      lastMsg: 'Hey, this is Tarek here, how are you?',
      hasSeen: false,
      hasUnSeenMsg: true,
      unSeenNum: 4,
      lastMsgTime: '8:30',
      isOnline: true),
  Chatter(
      imgUrl:
          'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/10609418_935363916513525_5938043838668710750_n.jpg?_nc_cat=111&_nc_ohc=kHM8ZxU1VkIAX8IR5Qi&_nc_ht=scontent-hbe1-1.xx&oh=3e17b1ae44bc9a37c31078776fd24215&oe=5EA45ABF',
      username: 'Mofakroon',
      lastMsg: 'Hey, this is Tarek here, how are you?',
      hasSeen: false,
      hasUnSeenMsg: false,
      unSeenNum: 0,
      lastMsgTime: '8:30',
      isOnline: true),
  Chatter(
      imgUrl:
          'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/10609418_935363916513525_5938043838668710750_n.jpg?_nc_cat=111&_nc_ohc=kHM8ZxU1VkIAX8IR5Qi&_nc_ht=scontent-hbe1-1.xx&oh=3e17b1ae44bc9a37c31078776fd24215&oe=5EA45ABF',
      username: 'Holiday',
      lastMsg: 'Hey, this is Tarek here, how are you?',
      hasSeen: false,
      hasUnSeenMsg: true,
      unSeenNum: 3,
      lastMsgTime: '8:30',
      isOnline: true),
];

const dummyChattersMessages = const [
  {
    'status': messageType.received,
    'contactImgUrl':
        'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg',
    'contactName': 'Client',
    'message':
        'Hi Tarek, I\'d like to hire you to create a mobile app for my business',
    'time': '08:43 AM'
  },
  {
    'status': messageType.sent,
    'message': 'Hi sir, I hope you are doing great!',
    'time': '08:45 AM'
  },
  {
    'status': messageType.sent,
    'message':
        'Please share with me the details of your project, as well as your time and budgets constraints.',
    'time': '08:45 AM'
  },
  {
    'status': messageType.received,
    'contactImgUrl':
        'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg',
    'contactName': 'Client',
    'message': 'Sure, let me send you a document that explains everything.',
    'time': '08:47 AM'
  },
  {
    'status': messageType.sent,
    'message': 'Ok it\'s my pleasure!',
    'time': '08:45 AM'
  },
];

const DUMMY_PROFILE_USER_DATA = const [
  Profile(
    name: 'Tarek Alabd',
    imgUrl:
        'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/p960x960/57374802_848844595448835_955623935527878656_o.jpg?_nc_cat=108&_nc_ohc=tG28oOplC-YAX98GVvE&_nc_ht=scontent-hbe1-1.xx&_nc_tp=1002&oh=7c3538ef253caf3ef6d838a30b3f6148&oe=5E9DB450',
    title: 'Flutter Developer',
    age: 0,
    email: 't@alabd.com',
    address: 'Egypt',
    workAt: 'Test',
    workAs: 'Developer',
    moreAboutWork: 'Write details.',
  ),
];
