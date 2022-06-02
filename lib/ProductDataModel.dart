class ProductDataModel {
  String? description;
  String? imageURL;
  String? price;
  String? rating;
  String? name;
  String? productUrl;

  ProductDataModel(
      {this.description,
      this.imageURL,
      this.price,
      this.rating,
      this.name,
      this.productUrl});

  ProductDataModel.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    imageURL = json['image'];
    price = json['price'];
    rating = json['rating'];
    name = json['name'];
    productUrl = json['url'];
  }
}
