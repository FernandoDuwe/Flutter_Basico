import "package:flutter/material.dart";
import "package:flutter_basico_2/models/city_model.dart";
import "package:flutter_basico_2/screens/city_search_form.dart";

class CadUserForm extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController enderecoController = TextEditingController();
  TextEditingController cidadeController = TextEditingController();

  CadUserForm({super.key});

  Future<void> getEndereco(BuildContext context) async {
    CityModel? result = await  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => CitySearchForm(),
    )) as CityModel?;

    if (result != null)
      cidadeController.text = result.name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de usuário"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.save))],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Nome"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: enderecoController,
              decoration: InputDecoration(labelText: "Endereço"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: cidadeController,
              decoration: InputDecoration(
                  labelText: "Cidade",
                  suffix: IconButton(
                    onPressed: () => getEndereco(context),
                    icon: Icon(Icons.more_horiz_outlined),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
