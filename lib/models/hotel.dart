class Hotel {
  String imageUrl;
  String title;
  String description;
  int price;
  double rating;

  Hotel({required this.description, required this.imageUrl, required this.price, required this.rating, required this.title});
}

final List<Hotel> hotels = [
 Hotel(
    imageUrl: 'assets/images/hotel03.jpg',
    title: 'Orchad House',
    description: 'kingdom Tower, Brazile',
    price: 2500000000,
    rating: 4.5,
  ),

 Hotel(
    imageUrl: 'assets/images/hotel04.jpg',
    title: 'The Hollies House',
    description: 'kingdom Tower, Brazile',
    price: 2000000000,
    rating: 4.5,
  ),
 
    Hotel(
    imageUrl: 'assets/images/hotel03.jpg',
    title: 'sultans dine',
    description: 'kingdom Tower, Brazile',
    price: 180,
    rating: 4.5,
  ),

  Hotel(
    imageUrl: 'assets/images/hotel04.jpg',
    title: 'sultans dine',
    description: 'kingdom Tower, Brazile',
    price: 180,
    rating: 4.5,
  )
];
