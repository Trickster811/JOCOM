import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class ChatScreen extends StatefulWidget {
  final List<List<dynamic>> menuItemList;
  final double appBarHeightSize;
  const ChatScreen({
    Key? key,
    required this.appBarHeightSize,
    required this.menuItemList,
  }) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int index = 0;

  final listImages = [
    'assets/images/un_1.png',
    'assets/images/iut.png',
    'assets/images/fs.png',
    'assets/images/fse.png',
    'assets/images/fseg.png',
    'assets/images/egcim.png',
    'assets/images/esmv.png',
    'assets/images/ensai.png',
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Journée de l'Orientation et de la Communication\n(JOCOM)",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 2.5,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Container(
            height: 250,
            width: double.maxFinite,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              child: Image.asset(
                'assets/images/un_1.png',
                semanticLabel: 'University of Ngaoundere',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 2.5,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Text(
            "Université de Ngaoundéré",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 2.5,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          CarouselSlider.builder(
            itemCount: listImages.length,
            options: CarouselOptions(
              autoPlayInterval: Duration(
                seconds: 4,
              ),
              viewportFraction: 1,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              height: 250,
              autoPlay: true,
            ),
            itemBuilder: (context, index, realIndex) {
              final image = listImages[index];
              return buildImage(image, index);
            },
          ),
        ],
      ),
    );
  }

  Widget itemBuilder(Message message) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            '${DateFormat('yyyy-MM-dd H:m:s').format(message.dateTime)}',
            style: TextStyle(
              fontFamily: 'Comfortaa_bold',
              fontSize: 9,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Colors.black12))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/message.6.svg',
                        color: Theme.of(context).iconTheme.color,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Theme.of(context).iconTheme.color,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                          child: Text(
                            'Reply',
                            style: TextStyle(
                              fontFamily: 'Comfortaa_bold',
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  'Message',
                  style: TextStyle(
                    fontFamily: 'Comfortaa_bold',
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  message.text,
                  style: TextStyle(
                    fontFamily: 'Comfortaa_regular',
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 8.0,
                ),
                margin: EdgeInsets.only(
                  top: 8.0,
                ),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    border: Border(top: BorderSide(color: Colors.black12))),
                child: Text(
                  'Hidden Chat',
                  style: TextStyle(
                    fontFamily: 'Comfortaa_bold',
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildImage(String img, int index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: Image.asset(
            img,
            fit: BoxFit.cover,
          ),
        ),
      );
}

class Message {
  final String text;
  final DateTime dateTime;

  const Message({
    Key? key,
    required this.text,
    required this.dateTime,
  });
}
