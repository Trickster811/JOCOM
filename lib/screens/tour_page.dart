import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jocom/screens/components/departments_pages/departments_list_page.dart';

class TourScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Facultes',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          itemBuilder(
            context,
            SchoolItems(
              description:
                  "est un établissement ayant pour objectif de former des etudiants afin de leur octroyer les compétences requises pour qu'il puisse s'inserer sans encombre dans le monde professionnel et ainsi obtenir un emploi ou en créer.",
              listDepartment: [
                DepartmentItems(
                  description: 'yo',
                  image: 'assets/images/fs.png',
                  title: 'Physique',
                ),
                DepartmentItems(
                  description: 'yo',
                  image: 'assets/images/fs.png',
                  title: 'Chimie',
                ),
                DepartmentItems(
                  description: 'yo',
                  image: 'assets/images/fs.png',
                  title: 'Math-Info',
                ),
                DepartmentItems(
                  description: 'yo',
                  image: 'assets/images/fs.png',
                  title: 'Biologie',
                ),
              ],
              image: 'assets/images/fs.png',
              title: 'Faculte des Sciences',
            ),
          ),
          itemBuilder(
            context,
            SchoolItems(
              description:
                  "est un établissement ayant pour objectif de former des etudiants afin de leur octroyer les compétences requises pour qu'il puisse s'inserer sans encombre dans le monde professionnel et ainsi obtenir un emploi ou en créer.",
              listDepartment: [
                DepartmentItems(
                  description: 'yo',
                  image: 'assets/images/fs.png',
                  title: 'Physique',
                ),
              ],
              image: 'assets/images/fse.png',
              title: "Faculte des Sciences de l'Education",
            ),
          ),
          itemBuilder(
            context,
            SchoolItems(
              description:
                  "est un établissement ayant pour objectif de former des etudiants afin de leur octroyer les compétences requises pour qu'il puisse s'inserer sans encombre dans le monde professionnel et ainsi obtenir un emploi ou en créer.",
              listDepartment: [
                DepartmentItems(
                  description: 'yo',
                  image: 'assets/images/fs.png',
                  title: 'Physique',
                ),
              ],
              image: 'assets/images/fseg.png',
              title: "Faculte des Sciences Economiques et de Gestion",
            ),
          ),
          itemBuilder(
            context,
            SchoolItems(
              description:
                  "est un établissement ayant pour objectif de former des etudiants afin de leur octroyer les compétences requises pour qu'il puisse s'inserer sans encombre dans le monde professionnel et ainsi obtenir un emploi ou en créer.",
              listDepartment: [
                DepartmentItems(
                  description: 'yo',
                  image: 'assets/images/fs.png',
                  title: 'Physique',
                ),
              ],
              image: 'assets/images/fsjp.png',
              title: "Faculte des Sciences Juridiques et Politiques",
            ),
          ),
          itemBuilder(
            context,
            SchoolItems(
              description:
                  "est un établissement ayant pour objectif de former des etudiants afin de leur octroyer les compétences requises pour qu'il puisse s'inserer sans encombre dans le monde professionnel et ainsi obtenir un emploi ou en créer.",
              listDepartment: [
                DepartmentItems(
                  description: 'yo',
                  image: 'assets/images/fs.png',
                  title: 'Physique',
                ),
              ],
              image: 'assets/images/fs.png',
              title: 'Faculte de Medicine et des Sciences Biomedicales',
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Ecoles de Formation',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          itemBuilder(
            context,
            SchoolItems(
              description:
                  "est un établissement ayant pour objectif de former des etudiants afin de leur octroyer les compétences requises pour qu'il puisse s'inserer sans encombre dans le monde professionnel et ainsi obtenir un emploi ou en créer.",
              listDepartment: [
                DepartmentItems(
                  description: 'yo',
                  image: 'assets/images/fs.png',
                  title: 'Physique',
                ),
              ],
              image: 'assets/images/iut.png',
              title: 'Institut Universitaire de Technologie',
            ),
          ),
          itemBuilder(
            context,
            SchoolItems(
              description:
                  "est un établissement ayant pour objectif de former des etudiants afin de leur octroyer les compétences requises pour qu'il puisse s'inserer sans encombre dans le monde professionnel et ainsi obtenir un emploi ou en créer.",
              listDepartment: [
                DepartmentItems(
                  description: 'yo',
                  image: 'assets/images/fs.png',
                  title: 'Physique',
                ),
              ],
              image: 'assets/images/ensai.png',
              title: 'Ecole Nationale des Sciences Agro-Industrielles',
            ),
          ),
          itemBuilder(
            context,
            SchoolItems(
              description:
                  "est un établissement ayant pour objectif de former des etudiants afin de leur octroyer les compétences requises pour qu'il puisse s'inserer sans encombre dans le monde professionnel et ainsi obtenir un emploi ou en créer.",
              listDepartment: [
                DepartmentItems(
                  description: 'yo',
                  image: 'assets/images/fs.png',
                  title: 'Physique',
                ),
              ],
              image: 'assets/images/esmv.png',
              title: 'Ecole Superiieure de Medicine Vetetrinaires',
            ),
          ),
          itemBuilder(
            context,
            SchoolItems(
              description:
                  "est un établissement ayant pour objectif de former des etudiants afin de leur octroyer les compétences requises pour qu'il puisse s'inserer sans encombre dans le monde professionnel et ainsi obtenir un emploi ou en créer.",
              listDepartment: [
                DepartmentItems(
                  description: 'yo',
                  image: 'assets/images/fs.png',
                  title: 'Physique',
                ),
              ],
              image: 'assets/images/egcim.png',
              title: 'Ecole de genie Chimique et des Industries Minerales',
            ),
          ),
        ],
      ),
    );
  }

  Widget itemBuilder(BuildContext context, SchoolItems schoolItem) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DepartmentScreen(
            schoolItems: schoolItem,
          ),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  child: Image.asset(
                    schoolItem.image,
                    semanticLabel: schoolItem.title,
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
                          Color.fromARGB(134, 0, 0, 0),
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
                            schoolItem.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
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

class SchoolItems {
  final String image;
  final String title;
  final String description;
  final List<DepartmentItems> listDepartment;
  const SchoolItems({
    Key? key,
    required this.description,
    required this.listDepartment,
    required this.image,
    required this.title,
  });
}
// Widget itemBuilder(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           padding: EdgeInsets.symmetric(
//             vertical: 10,
//           ),
//           height: 200,
//           width: double.maxFinite,
//           color: Colors.white,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 height: 140,
//                 child: Stack(
//                   fit: StackFit.expand,
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(10),
//                       ),
//                       child: Image.network(
//                         items.image,
//                         semanticLabel: items.title,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     SafeArea(
//                       bottom: false,
//                       top: false,
//                       child: Container(
//                         // height: double.maxFinite,
//                         // width: double.maxFinite,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(10),
//                           ),
//                           gradient: LinearGradient(
//                             begin: AlignmentDirectional.topStart,
//                             end: AlignmentDirectional.bottomStart,
//                             colors: [
//                               Colors.transparent,
//                               Color.fromARGB(139, 0, 0, 0),
//                             ],
//                           ),
//                         ),
//                         child: Column(
//                           // mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Spacer(),
//                             Padding(
//                               padding: EdgeInsets.symmetric(horizontal: 10),
//                               child: Text(
//                                 items.title,
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.symmetric(
//                                 horizontal: 8.0,
//                               ),
//                               child: Row(
//                                 children: [
//                                   Icon(
//                                     Icons.remove_red_eye_rounded,
//                                     size: 15,
//                                     color: Colors.white,
//                                   ),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Text(
//                                     '261',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 12,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 alignment: Alignment.bottomLeft,
//                 height: 30,
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 10,
//                   ),
//                   child: Row(
//                     children: [
//                       Text(
//                         '${DateFormat('yyyy-MM-dd H:m:s').format(items.date)}',
//                         style: TextStyle(
//                           color: Colors.black26,
//                           fontSize: 14,
//                         ),
//                       ),
//                       Spacer(),
//                       ElevatedButton(
//                         onPressed: () => Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: ((context) => NewsView(
//                                   Actu: items,
//                                 )),
//                           ),
//                         ),
//                         style: TextButton.styleFrom(
//                           backgroundColor: Colors.transparent,
//                           elevation: 0,
//                         ),
//                         child: Text(
//                           'Voir plus...',
//                           style: TextStyle(
//                             color: Colors.blue,
//                             fontSize: 14,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//       ],
//     );
//   }
// }