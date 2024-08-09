import 'package:flutter/material.dart';
import 'package:flutter_listview/components/card.dart';
import 'package:flutter_listview/models/country.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Countries> countries = [
    Countries(
        image: 'assets/images/india.png',
        country: 'India',
        continent: 'Asia',
        language: 'Hindi'),
    Countries(
        image: 'assets/images/thailand.png',
        country: 'Thailand',
        continent: 'Asia',
        language: 'Thai'),
    Countries(
        image: 'assets/images/southkorea.jpeg',
        country: 'South Korea',
        continent: 'Asia',
        language: 'Korean'),
    Countries(
        image: 'assets/images/taiwan.png',
        country: 'Taiwan',
        continent: 'Asia',
        language: 'Mandarin Chinese'),
    Countries(
        image: 'assets/images/italy.png',
        country: 'Italy',
        continent: 'Europe',
        language: 'Italian'),
    Countries(
        image: 'assets/images/spain.jpeg',
        country: 'Spain',
        continent: 'Europe',
        language: 'Spanish'),
    Countries(
        image: 'assets/images/china.jpeg',
        country: 'China',
        continent: 'Asia',
        language: 'Mandarin Chinese'),
    Countries(
        image: 'assets/images/brazil.jpeg',
        country: 'Brazil',
        continent: 'South America',
        language: 'Portuguese'),
    Countries(
        image: 'assets/images/philippines.jpeg',
        country: 'Philippines',
        continent: 'Asia',
        language: 'Filipino'),
    Countries(
        image: 'assets/images/russia.jpeg',
        country: 'Russia',
        continent: 'Europe',
        language: 'Russian'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ListView',
        ),
      ),
      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          return CardWidget(
            image: countries[index].image,
            country: countries[index].country,
            continent: countries[index].continent,
            language: countries[index].language,
          );
        },
      ),
    );
  }
}
