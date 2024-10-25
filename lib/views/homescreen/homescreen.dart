import 'package:facts_api/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.read<HomescreenController>().getfacts();
      }),
      body: Center(
          child: Consumer<HomescreenController>(
        builder: (context, providerobj, child) => ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(providerobj.obj!.data![index].fact.toString()),
                subtitle: Text(providerobj.obj!.data![index].length.toString()),
              );
            },
            itemCount: providerobj.obj?.data?.length),
      )),
    );
  }
}
