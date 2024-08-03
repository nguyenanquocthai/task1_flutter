class House {
  String imageUrl;
  String title;
  String description;
  int price;
  double rating;

  House({required this.description, required this.imageUrl, required this.price, required this.rating, required this.title});
}

final List<House> houses = [
 House(
    imageUrl: 'assets/images/hotel01.jpg',
    title: 'Dreamsville House',
    description: 'Jl. Sultan Iskandar Muda',
    price: 180,
    rating: 4.5,
  ),

 House(
    imageUrl: 'assets/images/hotel02.jpg',
    title: 'The Hollies House',
    description: 'kingdom Tower, Brazile',
    price: 180,
    rating: 4.5,
  ),
 
    House(
    imageUrl: 'assets/images/hotel03.jpg',
    title: 'sultans dine',
    description: 'kingdom Tower, Brazile',
    price: 180,
    rating: 4.5,
  ),

  House(
    imageUrl: 'assets/images/hotel04.jpg',
    title: 'sultans dine',
    description: 'kingdom Tower, Brazile',
    price: 180,
    rating: 4.5,
  )
];
