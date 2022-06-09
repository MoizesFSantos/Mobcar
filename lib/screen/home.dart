// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mobcar/components/add_new_component.dart';
import 'package:mobcar/components/drawer_menu.dart';
import 'package:mobcar/controllers/home_controller.dart';
import 'package:mobcar/services/api_connection.dart';
import 'package:mobcar/services/dio_client.dart';
import 'package:mobcar/shared/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = HomeController(ApiService(DioClient()));

  @override
  void initState() {
    super.initState();
    controller.fetchAllMarcas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'MOBCAR',
          style: TextStyle(color: pColor, fontWeight: FontWeight.w100),
        ),
        actions: [
          Builder(builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu_open_rounded,
                color: pColor,
              ),
            );
          })
        ],
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Title 1',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              subtitle: Text('Title 2'),
              trailing: Container(
                width: MediaQuery.of(context).size.width * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                child: TextButton(
                  onPressed: () {
                    addNewDialog(context);
                  },
                  child: Text(
                    'Add new',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Divider(
              height: 2,
              color: Colors.black,
            ),
            Expanded(
              child: AnimatedBuilder(
                animation: controller,
                builder: (context, widget) {
                  return ListView.builder(
                    itemCount: controller.marcas.length,
                    itemBuilder: (context, index) {
                      shrinkWrap:
                      true;
                      final marca = controller.marcas[index];
                      return ListTile(
                        title: Text(marca.nome),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        color: Colors.transparent,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.copyright_sharp,
                color: pColor,
                size: 20,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '2020. All rights reserved to Mobcar.',
                style: TextStyle(
                    color: pColor, fontSize: 16.0, fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
