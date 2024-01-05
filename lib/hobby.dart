class Hobby {
  final String name;
  bool value;

  Hobby({required this.name, required this.value});

  static List<Hobby> getHoddy() {
    return [
      Hobby(name: "Tiktok", value: false),
      Hobby(name: "Youtube", value: false),
      Hobby(name: "Shopee", value: false),
      Hobby(name: "Cook", value: false),
    ];
  }
}
