import 'package:flutter/material.dart';
import 'package:photogallery/album_screen.dart';
import 'package:photogallery/widgets/image_container.dart';

class Item {
  final List<Map<String, String>> item = [
    {
      'img':
      'https://m.media-amazon.com/images/I/71D6gzDvfVL._AC_UF1000,1000_QL80_.jpg',
      'title': 'Mood',
      'header': 'Mood With Nature',
      'description':
      'Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings',

    },
    {
      'img':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ1VuKA1bfF-J9EICmf9n4YvfTkXkhQb4Zln2kVXHZnw&s',
      'title': 'Asthetic',
      'header': 'Asthetic is Everything',
      'description':
      'Every snapshot tells a story of beauty, tranquility, and creativity. Each carefully curated image captures moments of serenity, elegance, and wonder, inviting you to embark on a journey of visual delight.',
    },
    {
      'img':
      'https://static.vecteezy.com/system/resources/thumbnails/037/320/223/small/sunlit-deer-oasis-free-photo.jpg',
      'title': 'Animals',
      'header': 'Animal Story',
      'description':
      'Each picture tells a unique story, offering glimpses into the lives and habitats of these fascinating beings. Whether you are an avid nature enthusiast, an animal lover, or simply seeking inspiration from the wonders of the natural world',

    },
    {
      'img':
      'https://burst.shopifycdn.com/photos/downtown-toronto.jpg?width=1000&format=pjpg&exif=0&iptc=0',
      'title': 'City',
      'header': ' beautiful City',
      'description':
      'From iconic landmarks to intimate moments, each image tells a unique story, inviting viewers to explore the beauty',

    },
    {
      'img':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXjyNOG1Gid37WuGLjGcWGAA9uxYEOM-a0_YIwB08EAw&s',
      'title': 'Travel',
      'header': 'Travel The World',
      'description':
      'Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings',

    },
    {
      'img':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpkbr9WksXUPLZif2kGXyk8cRZYyh-STZw4Q&s',
      'title': 'Sky',
      'header': 'Sky View',
      'description':
      'Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings',

    },
    {
      'img':
      'https://static.vecteezy.com/system/resources/thumbnails/023/464/603/small_2x/empty-asphalt-road-towards-modern-city-ai-generated-photo.jpg',
      'title': 'Road',
      'header': 'Road in City',
      'description':
      'Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings',

    },
    {
      'img':
      'https://cdn.pixabay.com/photo/2021/09/13/08/18/blue-flower-6620619_640.jpg',
      'title': 'Flower',
      'header': 'Beautiful Flower',
      'description':
      'Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings',

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
            'Photo Gallery',
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
            ),
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

   List<Map<String, String>> item = Item().item;

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
        child: ImageContainer(
          img: item[index]['img']!,
          text: item[index]['title']!,
        ),
      );
    },
  );
}
