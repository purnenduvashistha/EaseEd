import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/clayContainerHighlight.dart';
import '../../widgets/submitBtn.dart';


class DashboardTopBar extends StatelessWidget {
  const DashboardTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Hello, Purnendu!',
          style: kHeading3,
        ),
        Spacer(),
        Stack(
          alignment: Alignment.topRight,
          children: [
            ClayContainerHighlight(
              iconData: CupertinoIcons.bell,
            ),
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 9,
              child: Text(
                '5',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
        SizedBox(
          width: 10,
        ),
        ClayContainerHighlight(onTap: () {}, iconData: CupertinoIcons.search),
      ],
    );
  }
}

class SchoolCard extends StatefulWidget {
  String imagePath;
  String name;
  String logoPath;
  String vacancies;
  String classDetails;
  String message;
  double rating;

  SchoolCard(
      {required this.imagePath,
        required this.classDetails,
        required this.logoPath,
        required this.message,
        required this.name,
        required this.vacancies,
        required this.rating});
  @override
  _SchoolCardState createState() => _SchoolCardState();
}

class _SchoolCardState extends State<SchoolCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //Navigator.pushNamed(context, SchoolDetailsPage.id);
      },
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.blueGrey.shade100,
                blurRadius: 20,
              ),
            ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Image.asset(
                  widget.imagePath,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(widget.logoPath),
                      ),
                      Text(
                        widget.name,
                        overflow: TextOverflow.ellipsis,
                        style: kHeading3,
                      ),
                      Spacer(),
                      Text(
                        'Class ' + widget.classDetails,
                        style: kHeading4.copyWith(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.only(left: 12, bottom: 0),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.vacancies + ' Vacancies',
                        style: kHeading2.copyWith(
                            color: Colors.blueGrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),

                      Text(
                        widget.vacancies + '/10',
                        style: kHeading2.copyWith(
                            color: Colors.blueGrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    widget.message,
                    style: kHeading4,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    child: SubmitButton(
                      height: 50,
                      onTap: () {},
                      text: 'Apply',
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}