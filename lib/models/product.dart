class Product {
  String id;
  String productName;
  String productPrice;
  String productDescription;

  Product(
      {this.id, this.productName, this.productPrice, this.productDescription});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productName = json['product_name'];
    productPrice = json['product_price'];
    productDescription = json['product_description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_name'] = this.productName;
    data['product_price'] = this.productPrice;
    data['product_description'] = this.productDescription;
    return data;
  }
}
