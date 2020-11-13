class ItemModel {
  final String prodName;
  final String prodUrl;
  final String ownLoc;
  final String ownName;
  ItemModel({this.prodName, this.prodUrl, this.ownLoc, this.ownName});

  static final List<ItemModel> dummyData = [
    ItemModel(
        prodName: "BoAt Airdopes 441 TWS \nEar-Buds",
        prodUrl:
            "https://images-na.ssl-images-amazon.com/images/I/614iWzISPoL._SX522_.jpg",
        ownLoc: "Paschim Vihar",
        ownName: "Amrit"),
    ItemModel(
        prodName: "Apple iPhone 11 Pro Max\n(64GB) - Midnight Green",
        prodUrl:
            "https://images-na.ssl-images-amazon.com/images/I/61ers6OzvUL._SL1024_.jpg",
        ownLoc: "Gurgaon",
        ownName: "Channa"),
    ItemModel(
      prodName: "BoAt Rockerz 450 Bluetooth\nOn-Ear Headphone",
      prodUrl:
          "https://images-na.ssl-images-amazon.com/images/I/61ihz46SLOL._SX522_.jpg",
      ownLoc: "Gurgaon",
      ownName: "Pranshu",
    ),
    ItemModel(
      prodName: "Atrangi zindagi / अतरंगी ज़िंदगी\n(Hindi) Paperback",
      prodUrl:
          "https://images-na.ssl-images-amazon.com/images/I/5152YbJpyQL._SX331_BO1,204,203,200_.jpg",
      ownLoc: "Paschim Vihar",
      ownName: "Govind",
    ),
    ItemModel(
      prodUrl:
          "https://images-na.ssl-images-amazon.com/images/I/91qC1uigAPL._SX679_.jpg",
      prodName: "Alienware M15-15.6 FHD Gaming\nLaptop Thin and Light",
      ownLoc: "Paschim Vihar",
      ownName: "Govind",
    ),
    ItemModel(
      prodUrl:
          "https://images-na.ssl-images-amazon.com/images/I/61ZFUv0MDhL._SX679_.jpg",
      prodName: "28 Inches PUBG AWM Sniper\nRifle Toy Gun",
      ownLoc: "Paschim Vihar",
      ownName: "Govind",
    ),
    ItemModel(
      prodUrl:
          "https://i.pinimg.com/564x/9d/4f/58/9d4f58b195cf9f1ac4ec5d231c019588.jpg",
      prodName: "Redmi Earbuds 2C in-Ear Truly\nWireless Earphones",
      ownLoc: "Paschim Vihar",
      ownName: "Govind",
    )
  ];
}
