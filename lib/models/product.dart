class SingleProduct {
  String image;
  String name;
  String price;
  String description;
  String type;
  String style;
  bool islike = false;
  SingleProduct(
      {required this.image,
      required this.price,
      required this.description,
      required this.name,
      required this.style,
      required this.type});
}

abstract class SingleProducts {
  static List<SingleProduct> products = [
    SingleProduct(
        image: "images/afterlogin/sariq.png",
        price: "99.90",
        description:
            "The Swedish Designer Monica Forstar's Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
        name: "Ox Mathis Chair",
        style: "Ox Mathis Furniture Modern Style",
        type: "Hans.j wegner"),
    SingleProduct(
        image: "images/afterlogin/yashil.png",
        price: "99.90",
        description:
            "The Swedish Designer Monica Forstar's Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
        name: "Fuji Arm Chair ",
        style: "Ox Mathis Furniture Modern Style",
        type: "Hans.j wegner"),
    SingleProduct(
        image: "images/grey.png",
        price: "73.90",
        description:
            "The Swedish Designer Monica Forstar's Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
        name: "Fuji Arm Chair ",
        style: "Ox Mathis Furniture Modern Style",
        type: "Hans.j wegner"),
    SingleProduct(
        image: "images/oq.png",
        price: "99.90",
        description:
            "The Swedish Designer Monica Forstar's Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
        name: "Fuji Arm Chair ",
        style: "Ox Mathis Furniture Modern Style",
        type: "Hans.j wegner"),
    SingleProduct(
        image: "images/sariq2.png",
        price: "99.90",
        description:
            "The Swedish Designer Monica Forstar's Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
        name: "Fuji Arm Chair ",
        style: "Ox Mathis Furniture Modern Style",
        type: "Hans.j wegner"),
    SingleProduct(
        image: "images/yashil2.png",
        price: "99.90",
        description:
            "The Swedish Designer Monica Forstar's Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
        name: "Fuji Arm Chair ",
        style: "Ox Mathis Furniture Modern Style",
        type: "Hans.j wegner")
  ];

  static List<Map<String, dynamic>> card = [];
}
