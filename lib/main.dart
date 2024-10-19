import 'package:flutter/material.dart';

import 'package:country_list_pick/country_list_pick.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyCountry());
  }
}

class MyCountry extends StatefulWidget {
  const MyCountry({super.key});

  @override
  State<MyCountry> createState() => _MyCountryState();
}

class _MyCountryState extends State<MyCountry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Text(
                "Country Picker",
                style: TextStyle(
                    color: Colors.lightBlue, fontWeight: FontWeight.bold),
              ),
              Text(" Country Picker \n @Mohamed Ali Belkouri"),
            ],
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Select your country",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black)),
                child: CountryListPick(
                  appBar: PreferredSize(
                    preferredSize: Size.zero,
                    child: AppBar(
                      title: Text("Select your country"),
                    ),
                  ),
                  theme: CountryTheme(
                    isDownIcon: true,
                    isShowTitle: true,
                    isShowFlag: true,
                    initialSelection: "+216",
                    showEnglishName: true,
                  ),
                  useSafeArea: true,
                  useUiOverlay: true,
                  onChanged: (val) {},
                ),
              )
            ],
          ),
        ));
  }
}
