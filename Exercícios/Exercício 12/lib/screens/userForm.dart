import 'package:flutter/material.dart';
import 'package:flutter_basico/models/userInsertModel.dart';
import 'package:flutter_basico/repositories/userRepository.dart';
import 'package:flutter_basico/screens/resultPage.dart';

class UserForm extends StatefulWidget {
  const UserForm({Key? key}) : super(key: key);

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  TextEditingController userController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();

  bool processando = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_reaction_outlined, size: 128),
                  SizedBox(height: 30),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 300),
                    child: Text(
                        "Cadastre um novo usuário. Preencha os dados abaixo e clique em Cadastrar"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: TextField(
                controller: this.userController,
                decoration: InputDecoration(labelText: "Seu nome de usuário"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: TextField(
                controller: this.nameController,
                decoration: InputDecoration(labelText: "Nome"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                controller: this.emailController,
                decoration: InputDecoration(labelText: "E-mail"),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(minHeight: 50, minWidth: 200),
              child: ElevatedButton(
                onPressed: () async {
                  setState(() {
                    this.processando = true;
                  });

                  UserRepository vrRepository = UserRepository();
                  bool vrResult = await vrRepository.Insert(UserInsertModel(
                      this.nameController.text,
                      this.emailController.text,
                      this.userController.text));

                  setState(() {
                    this.processando = false;
                  });

                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => ResultPage(vrResult)));
                },
                child: (this.processando
                    ? CircularProgressIndicator()
                    : Text("Cadastrar")),
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
