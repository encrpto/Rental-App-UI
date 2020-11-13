class ChatModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;

  ChatModel({this.avatarUrl, this.name, this.datetime, this.message});

  static final List<ChatModel> dummyData = [
    ChatModel(
      avatarUrl:
          "https://instagram.fdel7-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s750x750/106569496_155437259413585_1172878431815533100_n.jpg?_nc_ht=instagram.fdel7-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=1oEVme-HJTwAX85iYlg&_nc_tp=24&oh=9c3b817639229a48edf332fe0e78e2c1&oe=5FD6E0A2",
      name: "Sahil Jassal",
      datetime: "20:18",
      message: "How about meeting tomorrow?",
    ),
    ChatModel(
      avatarUrl:
          "https://instagram.fdel7-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s750x750/91298595_244660646719932_4090320029124230330_n.jpg?_nc_ht=instagram.fdel7-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=FurqWokVAdIAX8ZDPhi&_nc_tp=24&oh=dbaedabbae369191c8ead9a704620243&oe=5FD6DA2D",
      name: "Chashita",
      datetime: "19:22",
      message: "I love that idea, it's great deal!",
    ),
    ChatModel(
      avatarUrl:
          "https://instagram.fdel7-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s750x750/121229088_776751849814023_743340296006956585_n.jpg?_nc_ht=instagram.fdel7-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=SW597UpIHbEAX_lk69C&_nc_tp=24&oh=3c463cbe66aeb6dfcffa25e49bf8b22f&oe=5FD75741",
      name: "Encrpto",
      datetime: "14:34",
      message: "Encrypted Chat",
    ),
    ChatModel(
      avatarUrl:
          "https://instagram.fdel7-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/p640x640/122755042_361854898587550_5052993271915723247_n.jpg?_nc_ht=instagram.fdel7-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=DGAPNTHzG30AX_yZGS8&_nc_tp=24&oh=6743e8dc3955673085b5af514e3ca90e&oe=5FD9BC86",
      name: "DD Singh",
      datetime: "11:05",
      message: "Bhai setting karva da?",
    ),
    ChatModel(
      avatarUrl:
          "https://instagram.fdel7-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s750x750/119638429_654710208561016_5577409275594531925_n.jpg?_nc_ht=instagram.fdel7-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=vU5-pxTewxIAX95cNOn&_nc_tp=24&oh=e51cc0986fcf547ada3ea1257d6b62d4&oe=5FD7497F",
      name: "Amritpreet Singh",
      datetime: "11:05",
      message: "I can pay u 500rs/month as rent for Iphone 12",
    ),
  ];
}
