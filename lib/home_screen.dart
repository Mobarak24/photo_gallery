import 'package:flutter/material.dart';
import 'package:photogallery/album_screen.dart';

class Item {
  var item = [
    {
      'img':
      'https://m.media-amazon.com/images/I/71D6gzDvfVL._AC_UF1000,1000_QL80_.jpg',
      'text': 'Mood'
    },
    {
      'img':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ1VuKA1bfF-J9EICmf9n4YvfTkXkhQb4Zln2kVXHZnw&s',
      'text': 'Asthetic'
    },
    {
      'img':
      'https://static.vecteezy.com/system/resources/thumbnails/037/320/223/small/sunlit-deer-oasis-free-photo.jpg',
      'text': 'Animals'
    },
    {
      'img':
      'https://burst.shopifycdn.com/photos/downtown-toronto.jpg?width=1000&format=pjpg&exif=0&iptc=0',
      'text': 'City'
    },
    {
      'img':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXjyNOG1Gid37WuGLjGcWGAA9uxYEOM-a0_YIwB08EAw&s',
      'text': 'Travel'
    },
    {
      'img':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpkbr9WksXUPLZif2kGXyk8cRZYyh-STZw4Q&s',
      'text': 'Sky'
    },
    {
      'img':
      'https://static.vecteezy.com/system/resources/thumbnails/023/464/603/small_2x/empty-asphalt-road-towards-modern-city-ai-generated-photo.jpg',
      'text': 'Road'
    },
    {
      'img':
      'https://cdn.pixabay.com/photo/2021/09/13/08/18/blue-flower-6620619_640.jpg',
      'text': 'Flower'
    },
  ];
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Photo Gallary',
          ),
          leading: Container(
            margin: const EdgeInsets.all(10),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
            ),
          ),
          actions: const [
            Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 24,
            )
          ],
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return gridViewBuilder(orientation);
          },
        ));
  }
}

Widget gridViewBuilder(Orientation orientation) {
  var item = Item().item;

  return GridView.builder(
    padding: const EdgeInsets.all(20),
    itemCount: item.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: (orientation == Orientation.portrait ? 2 : 4),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
    ),
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => AlbumScreen(items: item[index] ),),);
        },
        child: Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 30,
                color: Colors.black45,
              ),
            ],
            image: DecorationImage(
              image: NetworkImage(
                item[index]['img']!,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: FittedBox(
              alignment: Alignment.bottomLeft,
              fit: BoxFit.scaleDown,
              child: Text(
                item[index]['text']!,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
