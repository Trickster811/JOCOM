import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jocom/screens/components/news_pages/news_view.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
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
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.symmetric(vertical: 15.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Université de Ngaoundéré',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    // letterSpacing: 15,
                    fontSize: 20,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  height: 2.5,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Text(
                  'Univ - Ndere',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          NewsBox(
            actualites: Actualites(
                date: DateTime.now(),
                title: "Journée de l'orientation et de la Communication",
                image: 'assets/images/un_1.png',
                contenu: 'Venez decouvrir notre savoir-faire',
                type: 'Communication'),
          )
        ],
      ),
    );
  }
}

class NewsBox extends StatelessWidget {
  final Actualites actualites;
  const NewsBox({
    Key? key,
    required this.actualites,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => NewsViewScreen(actualites: actualites))),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            height: 200,
            width: double.maxFinite,
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 140,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        child: Image.asset(
                          actualites.image,
                          semanticLabel: actualites.title,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SafeArea(
                        bottom: false,
                        top: false,
                        child: Container(
                          // height: double.maxFinite,
                          // width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            gradient: LinearGradient(
                              begin: AlignmentDirectional.topStart,
                              end: AlignmentDirectional.bottomStart,
                              colors: [
                                Colors.transparent,
                                Color.fromARGB(139, 0, 0, 0),
                              ],
                            ),
                          ),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  actualites.title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye_rounded,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '261',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  height: 30,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      children: [
                        Text(
                          '${DateFormat('yyyy-MM-dd H:m:s').format(actualites.date)}',
                          style: TextStyle(
                            color: Colors.black26,
                            fontSize: 14,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'View More...',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class Actualites {
  final String title, image, contenu, type;
  final DateTime date;

  const Actualites(
      {Key? key,
      required this.date,
      required this.title,
      required this.image,
      required this.contenu,
      required this.type});
}
