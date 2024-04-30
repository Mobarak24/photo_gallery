import 'package:flutter/material.dart';

class AlbumScreen extends StatelessWidget {
  var items;

  AlbumScreen({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          items['text'],
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
            return const PortraitTree();
          } else {
            return const LandscapeTree();
          }
        },
      ),
    );
  }
}

class PortraitTree extends StatelessWidget {
  const PortraitTree({
    super.key,
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
              image: const DecorationImage(
                image: NetworkImage(
                    'https://m.media-amazon.com/images/I/71D6gzDvfVL._AC_UF1000,1000_QL80_.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'Mood With Nature',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'Mood With Nature,This is a beautiful place,i like this place '
                  'its really wonderful place.This is a beautiful place,i like this place',
              style: TextStyle(
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
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 160,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 30,
                        color: Colors.black45,
                      ),
                    ],
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpkbr9WksXUPLZif2kGXyk8cRZYyh-STZw4Q&s',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 160,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 30,
                        color: Colors.black45,
                      ),
                    ],
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://static.vecteezy.com/system/resources/thumbnails/023/464/603/small_2x/empty-asphalt-road-towards-modern-city-ai-generated-photo.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
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

class LandscapeTree extends StatelessWidget {
  const LandscapeTree({
    super.key,
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
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://m.media-amazon.com/images/I/71D6gzDvfVL._AC_UF1000,1000_QL80_.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 30, top: 10),
                  child: Text(
                    'Mood With Nature',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'Mood With Nature,This is a beautiful place,i like this place '
                        'its really wonderful place.This is a beautiful place,i like this place',
                    style: TextStyle(
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
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Container(
                        height: 160,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 15),
                              blurRadius: 30,
                              color: Colors.black45,
                            ),
                          ],
                          image: const DecorationImage(
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpkbr9WksXUPLZif2kGXyk8cRZYyh-STZw4Q&s',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 160,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 15),
                              blurRadius: 30,
                              color: Colors.black45,
                            ),
                          ],
                          image: const DecorationImage(
                            image: NetworkImage(
                              'https://static.vecteezy.com/system/resources/thumbnails/023/464/603/small_2x/empty-asphalt-road-towards-modern-city-ai-generated-photo.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
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
