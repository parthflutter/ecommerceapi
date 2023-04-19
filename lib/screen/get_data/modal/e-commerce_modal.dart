class commerceModal {
  String? id,
      productname,
      productprice,
      productrate,
      productoffer,
      productdesc,
      productimage,
      productcategory;

  commerceModal(
      {this.id,
      this.productname,
      this.productcategory,
      this.productdesc,
      this.productimage,
      this.productoffer,
      this.productprice,
      this.productrate});

  factory commerceModal.fromJson(Map<String, dynamic> json) => commerceModal(
        id: json["id"],
        productname: json["product_name"],
        productcategory: json["product_category"],
        productdesc: json["product_desc"],
        productimage: json["product_image"],
        productoffer: json["product_offer"],
        productprice: json["product_price"],
        productrate: json["product_rate"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "productname": productname,
        "productrate": productrate,
        "productprice": productprice,
        " productoffer": productoffer,
        "productimage": productimage,
        "productdesc": productdesc,
        "productcategory": productcategory,
      };
}
