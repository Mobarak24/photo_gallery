import 'package:flutter/material.dart';
import 'package:photogallery/widgets/image_container.dart';

class AlbumScreen extends StatelessWidget {
  final dynamic items;

  const AlbumScreen({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          items['title'],
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
          if (orientation == Orientation.portrait) {
            return PortraitTree(
              img: items['img'],
              header: items['header'],
              description: items['description'],
            );
          } else {
            return LandscapeTree(
              img: items['img'],
              header: items['header'],
              description: items['description'],
            );
          }
        },
      ),
    );
  }
}

class PortraitTree extends StatelessWidget {
  final String img, header, description;

  const PortraitTree({
    super.key,
    required this.img,
    required this.header,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 5),
            height: 325,
            width: 390,
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
                  img,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              header,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 19, right: 19),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 51),
                backgroundColor: const Color.fromRGBO(44, 171, 0, 1),
                foregroundColor: Colors.white,
                elevation: 10,
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
              child: const Text('See More'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 32),
            child: Text(
              'Suggestion',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(44, 171, 0, 1),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Row(
              children: [
                ImageContainer(
                    img:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpkbr9WksXUPLZif2kGXyk8cRZYyh-STZw4Q&s',
                    text: 'Sky'),
                SizedBox(
                  width: 20,
                ),
                ImageContainer(
                    img:
                        'https://static.vecteezy.com/system/resources/thumbnails/023/464/603/small_2x/empty-asphalt-road-towards-modern-city-ai-generated-photo.jpg',
                    text: 'Road'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LandscapeTree extends StatelessWidget {
  final String img, header, description;

  const LandscapeTree({
    super.key,
    required this.img,
    required this.header,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 298,
              width: 372,
              margin: const EdgeInsets.only(left: 15, right: 15, top: 5),
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
                  image: NetworkImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 10),
                  child: Text(
                    header,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 19, right: 19),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 51),
                      backgroundColor: const Color.fromRGBO(44, 171, 0, 1),
                      foregroundColor: Colors.white,
                      elevation: 10,
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('See More'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 32),
                  child: Text(
                    'Suggestion',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(44, 171, 0, 1),
                    ),
                  ),
                ),
                const SingleChildScrollView(
                  padding: EdgeInsets.all(20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ImageContainer(
                          img:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpkbr9WksXUPLZif2kGXyk8cRZYyh-STZw4Q&s',
                          text: 'Sky'),
                      SizedBox(
                        width: 20,
                      ),
                      ImageContainer(
                          img:
                              'https://static.vecteezy.com/system/resources/thumbnails/023/464/603/small_2x/empty-asphalt-road-towards-modern-city-ai-generated-photo.jpg',
                          text: 'Road'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
