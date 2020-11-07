class OfferDto {
  String id;
  String title;
  List<String> imageUrls;
  String description;
  double longitude;
  double latitude;
  int ownerId;
  List<int> itemCategories;
  int priceCategory;

  OfferDto.fromJson(json) {
    title = json['title'];
    imageUrls = json['imageUrls'];
    description = json['description'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    ownerId = json['ownerId'];
    itemCategories = json['itemCategories'];
    priceCategory = json['priceCategory'];
  }
}
// title": "Pope's Toilet, The (El bano del Papa)",
//         "imageUrls": [
//                 "http://dummyimage.com/195x142.jpg/dddddd/000000",
//                 "http://dummyimage.com/223x233.png/5fa2dd/ffffff",
//                 "http://dummyimage.com/178x107.bmp/5fa2dd/ffffff",
//                 "http://dummyimage.com/125x212.bmp/dddddd/000000"
//         ],
//         (optional) "description": "Endovascular replacement of unspecified heart valve",
//         "latitude": 4.740619,
//         "longitude": 7.0848064,
//         "ownerId": 1,
//         "itemCategories": [
//                 1
//         ],
//         "priceCategory": 2
