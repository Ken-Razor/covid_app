import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:covidapp/constant.dart';


class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  List countryData;
  List countryData2;

  fetchCountryData() async {

    http.Response response =
    await http.get('https://api.kawalcorona.com/indonesia/provinsi');
    setState(() {
      countryData = json.decode(response.body);
    });
  }
  fetchCountryData2() async {

    http.Response response =
    await http.get('https://api.kawalcorona.com/indonesia/provinsi?attributes');
    setState(() {
      countryData2 = json.decode(response.body);
    });
  }
  @override
  void initState() {
    fetchCountryData();
    fetchCountryData2();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Provinsi",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple.shade600,
        elevation: 0.0,
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Detail()));
            },
            child: FlatButton(
              textColor: Colors.white,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: countryData == null
          ? Center(
        child: CircularProgressIndicator(),
      )
          : ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            color: Colors.grey[50],
            child: Container(
              height: 110,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 200,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          countryData[index]['attributes']['Provinsi'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
//                        Image.network(
//                          countryData[index]['attributes']['Provinsi'],
//                          height: 50,
//                          width: 60,
//                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              '\nPOSITIF:' +
                                  countryData[index]['attributes']['Kasus_Posi'].toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kInfectedColor),
                            ),
                            Text(
                              'SEMBUH:' +
                                  countryData[index]['attributes']['Kasus_Semb'].toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kRecoverColor),
                            ),
                            Text(
                              'MENINGGAL:' +
                                  countryData[index]['attributes']['Kasus_Meni'].toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kDeathColor),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          );
        },
        itemCount: countryData == null ? 0 : countryData.length,
      ),
    );
  }
}

