import "package:flutter/material.dart";
import "package:flutter_basico_aula1/widgets/count_tile.dart";
import "package:flutter_basico_aula1/widgets/count_tile_custom_event.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> _cont = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lista contadores"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
        ),
        body: ListView.builder(
            itemCount: _cont.length,
            itemBuilder: (context, index) => CountTileCustomEvent(
                  index: index,
                  value: _cont[index],
                  onChange: (newCounter) {
                    setState(() {
                      _cont[index] = newCounter;
                    });
                  },
                )));
  }
}

/*
                CountTile(
                  index: index,
                  value: _cont[index],
                  onAdd: () {
                    setState(() {
                      _cont[index] = _cont[index] + 1;
                    });
                  },
                  onRemove: () {
                    setState(() {
                      _cont[index] = _cont[index] - 1;
                    });
                  },
                )*/
