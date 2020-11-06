import 'package:flutter/material.dart';
import 'package:covidapp/constant.dart';


class World extends StatelessWidget {
  final Map worldData;

  const World({Key key, this.worldData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 30,
                  color: kShadowColor,
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(6),
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kInfectedColor.withOpacity(.26)),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            border: Border.all(
                              color: kInfectedColor,
                              width: 2,
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Spacer(),
                Text(
                  worldData['cases'].toString(),
                  style: TextStyle(
                    fontSize: 40,
                    color: kInfectedColor,
                  ),
                ),
                Text(
                  "Positif",
                  style: kSubTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 30,
                  color: kShadowColor,
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(6),
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kRecoverColor.withOpacity(.26)),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            border: Border.all(
                              color: kRecoverColor,
                              width: 2,
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Spacer(),
                Text(
                  worldData['recovered'].toString(),
                  style: TextStyle(
                    fontSize: 40,
                    color: kRecoverColor,
                  ),
                ),
                Text(
                  "Sembuh",
                  style: kSubTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 30,
                  color: kShadowColor,
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(6),
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kDeathColor.withOpacity(.26)),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            border: Border.all(
                              color: kDeathColor,
                              width: 2,
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Spacer(),
                Text(
                  worldData['deaths'].toString(),
                  style: TextStyle(
                    fontSize: 40,
                    color: kDeathColor,
                  ),
                ),
                Text(
                  "Meninggal",
                  style: kSubTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}


