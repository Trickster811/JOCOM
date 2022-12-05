import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jocom/screens/components/departments_pages/departments_view_page.dart';
import 'package:jocom/screens/tour_page.dart';

class DepartmentScreen extends StatelessWidget {
  final SchoolItems schoolItems;
  const DepartmentScreen({
    Key? key,
    required this.schoolItems,
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
          schoolItems.title,
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    schoolItems.image,
                    semanticLabel: schoolItems.title,
                    fit: BoxFit.cover,
                  ),
                  SafeArea(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Colors.black.withOpacity(0.4),
                      ),
                    ),
                  ),
                ],
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
                    schoolItems.title,
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
                schoolItems.title + ' ' + schoolItems.description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Départememts',
                    textAlign: TextAlign.justify,
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
                ],
              ),
            ),
            for (var item in schoolItems.listDepartment)
              departmentBuilder(context, item),
          ],
        ),
      ),
    );
  }

  Widget departmentBuilder(
      BuildContext context, DepartmentItems departmentItems) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DepartmentViewScreen(
            departmentItems: departmentItems,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          width: double.maxFinite,
          height: 100,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 238, 238, 238),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Row(
            children: [
              Container(
                height: 90,
                width: 90,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  child: Image.asset(
                    schoolItems.image,
                    semanticLabel: schoolItems.title,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Text(
                  departmentItems.title,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SvgPicture.asset(
                'assets/icons/arrow-right-2.4.svg',
                color: Theme.of(context).iconTheme.color,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DepartmentItems {
  final String description;
  final String image;
  final String title;
  const DepartmentItems({
    Key? key,
    required this.description,
    required this.image,
    required this.title,
  });
}
