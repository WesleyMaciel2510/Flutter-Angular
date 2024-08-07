class HotelListData {
  HotelListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = "",
    this.dist = 1.8,
    this.reviews = 80,
    this.rating = 4.5,
    this.price = 180,
  });

  String imagePath;
  String titleTxt;
  String subTxt;
  double dist;
  double rating;
  int reviews;
  int price;

  static List<HotelListData> hotelList = <HotelListData>[
  HotelListData(
    imagePath: 'assets/places/place_1.png',
    titleTxt: 'Hilton Copacabana',
    subTxt: 'Rio de Janeiro, Brasil',
    dist: 2.0,
    reviews: 80,
    rating: 4.4,
    price: 180,
  ),
  HotelListData(
    imagePath: 'assets/places/place_2.png',
    titleTxt: 'Fasano Hotel',
    subTxt: 'São Paulo, Brasil',
    dist: 4.0,
    reviews: 74,
    rating: 4.5,
    price: 200,
  ),
  HotelListData(
    imagePath: 'assets/places/place_3.png',
    titleTxt: 'Belmond Hotel',
    subTxt: 'Foz do Iguaçu, Brasil',
    dist: 3.0,
    reviews: 62,
    rating: 4.0,
    price: 60,
  ),
  HotelListData(
    imagePath: 'assets/places/place_4.png',
    titleTxt: 'Radisson Hotel',
    subTxt: 'Curitiba , Brasil',
    dist: 7.0,
    reviews: 90,
    rating: 4.4,
    price: 170,
  ),
  HotelListData(
    imagePath: 'assets/places/place_5.png',
    titleTxt: 'Hotel Emiliano',
    subTxt: 'Rio de Janeiro, Brasil',
    dist: 2.0,
    reviews: 240,
    rating: 4.5,
    price: 200,
  ),
  HotelListData(
    imagePath: 'assets/places/place_6.png',
    titleTxt: 'Ponta dos Ganchos Resort',
    subTxt: 'Santa Catarina, Brasil',
    dist: 5.0,
    reviews: 120,
    rating: 4.6,
    price: 250,
  ),
   HotelListData(
    imagePath: 'assets/places/place_7.png',
    titleTxt: 'Hotel Nacional Rio',
    subTxt: 'Rio de Janeiro, Brasil',
    dist: 3.5,
    reviews: 150,
    rating: 4.3,
    price: 180,
  ),
  HotelListData(
    imagePath: 'assets/places/place_8.png',
    titleTxt: 'Hotel Unique',
    subTxt: 'São Paulo, Brasil',
    dist: 4.2,
    reviews: 200,
    rating: 4.7,
    price: 300,
  ),
  HotelListData(
    imagePath: 'assets/places/place_9.png',
    titleTxt: 'Deville Prime Salvador',
    subTxt: 'Bahia, Brasil',
    dist: 2.5,
    reviews: 300,
    rating: 4.8,
    price: 350,
  ),
  HotelListData(
    imagePath: 'assets/places/place_10.png',
    titleTxt: 'Hotel Fasano',
    subTxt: 'Belo Horizonte, Brasil',
    dist: 3.0,
    reviews: 180,
    rating: 4.6,
    price: 280,
  ),
];
}
