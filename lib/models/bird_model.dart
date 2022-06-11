class BirdModel {
  final String image;
  final String name;
  final String shortDetail;

  BirdModel(
      {required this.name, required this.image, required this.shortDetail});

  factory BirdModel.fromJson(Map<String, dynamic> json) => BirdModel(
      name: json['name'],
      image: json['image'],
      shortDetail: json['shortDetail']);
}

List<BirdModel> listOfBirds = [
  BirdModel(
      name: "Red-headed woodpecker",
      shortDetail: "Red-headed woodpecker is very common in south seast asia",
      image:
          "https://images.unsplash.com/photo-1520808663317-647b476a81b9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGJpcmR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
  BirdModel(
      name: "asian-kingfisher",
      shortDetail: "very small bird with blue and colorful feathers",
      image:
          "https://images.unsplash.com/photo-1444464666168-49d633b86797?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YmlyZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
  BirdModel(
      name: "macau parrot",
      shortDetail: "native to amazon forrest and eastern atlantic region",
      image:
          "https://images.unsplash.com/photo-1506220926022-cc5c12acdb35?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGJpcmR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
];
