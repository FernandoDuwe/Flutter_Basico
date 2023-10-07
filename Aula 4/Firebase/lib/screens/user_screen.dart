import "package:firebase_database/firebase_database.dart";
import "package:flutter/material.dart";
import "package:vaquinha/repositories/user_repository.dart";
import "package:vaquinha/widgets/user_cad_auth.dart";
import "package:vaquinha/widgets/user_form.dart";

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  late DatabaseReference _totalRef;
  double total = 0;

  @override
  void initState() {
    final database = FirebaseDatabase.instance;

    _totalRef = database.ref('total');

    _totalRef.onValue.listen((event) {
      setState(() {
        total = event.snapshot.value! as double;
      });
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Usuários"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => UserCadAuth(),
                ));
              },
              icon: Icon(Icons.verified_user_outlined))
        ],
      ),
      body: FutureBuilder(
        future: UserRepository.getAll(),
        builder: (context, snapshot) {
          if (snapshot.hasError) return Text(snapshot.error.toString());

          if (!snapshot.hasData) return CircularProgressIndicator();

          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.person),
                title: Text(snapshot.data![index].name),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseDatabase.instance.ref().update({"total": 5});

          showDialog(
            context: context,
            builder: (context) => UserForm(
              onSave: () {
                setState(() {});
              },
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      bottomSheet: Container(
        child: Text(total.toStringAsFixed(2)),
      ),
    );
  }
}
