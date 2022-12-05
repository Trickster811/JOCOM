import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jocom/screens/news_page.dart';

class NewsViewScreen extends StatelessWidget {
  final Actualites actualites;
  const NewsViewScreen({
    Key? key,
    required this.actualites,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: SvgPicture.asset(
            'assets/icons/arrow-left.svg',
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        title: Text(
          actualites.title,
          style: TextStyle(
            color: Theme.of(context).iconTheme.color,
            fontSize: 15,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.maxFinite,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                child: Image.asset(
                  actualites.image,
                  semanticLabel: actualites.title,
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
                    actualites.title,
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
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                actualites.contenu,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
