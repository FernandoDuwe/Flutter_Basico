import "package:flutter/material.dart";

import "../models/city_model.dart";

class CitySearchForm extends StatefulWidget {
  const CitySearchForm({super.key});

  @override
  State<CitySearchForm> createState() => _CitySearchFormState();
}

class _CitySearchFormState extends State<CitySearchForm> {
  List<CityModel> cities = [
    CityModel(id: 1, name: "Blumenau"),
    CityModel(id: 2, name: "Florianópolis"),
    CityModel(id: 3, name: "Chapeco"),
    CityModel(id: 4, name: "Dona Emma"),
    CityModel(id: 5, name: "Vila Itoupava"),
    CityModel(id: 6, name: "Reino do Garcia"),
  ];

  String search = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration:
              InputDecoration(labelText: "Pesquisar", border: InputBorder.none),
          onChanged: (value) {
            setState(() {
              search = value;
            });
          },
        ),
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          if (!cities[index].name.toUpperCase().contains(search.toUpperCase()))
            return Container(
              height: 0,
            );

          return ListTile(
            leading: Icon(Icons.location_city),
            title: Text(cities[index].name),
            onTap: () => Navigator.of(context).pop(cities[index]),
          );
        },
      ),
    );
  }
}
