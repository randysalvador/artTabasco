import 'package:flutter/material.dart';

class Place {
  final int id;
  final String name;
  final String description;
  final String location;
  final String image;
  final double rating;

  Place({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.location,
    @required this.image,
    @required this.rating,
  });
}

// demo places

List<Place> demoPlaces = [
  Place(
    id: 1,
    name: 'Balancan',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes.',
    location: 'Honshu, Japan',
    image: 'assets/images/place1.jpg',
    rating: 4,
    /**
     * 
     demoArtesanias :[
       Artesania(
         id:1,
         name:"Fine"
         description: "Lorem.."
         image:'',
         precio:123,
       ),
      Artesania(
         id:2,
         name:"Fine"
         description: "Lorem.."
         image:'',
         precio:123,
       ),
     ]
     */
  ),
  Place(
    id: 2,
    name: 'Cárdenas',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes.',
    location: 'Honshu, Japan',
    image: 'assets/images/place2.jpg',
    rating: 3,
  ),
  Place(
    id: 3,
    name: 'Centro',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes.',
    location: 'Honshu, Japan',
    image: 'assets/images/place3.jpg',
    rating: 5,
  ),
  Place(
    id: 4,
    name: 'Comalcalco',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes.',
    location: 'Honshu, Japan',
    image: 'assets/images/place4.jpg',
    rating: 3,
  ),
];
