// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

addNewDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          //imagem de carro
          //content:,
          title: Text('Title'),
          actions: [
            Column(
              children: [
                // DropdownButtonFormField(
                //   items: [],
                //   onChanged: (value) {},
                //   hint: Text('Marca'),
                // ),
                // DropdownButtonFormField(
                //   items: [],
                //   onChanged: (value) {},
                //   hint: Text('Modelo'),
                // ),DropdownButtonFormField(
                //   items: [],
                //   onChanged: (value) {},
                //   hint: Text('Ano'),
                // ),
                TextField(
                  decoration: InputDecoration(hintText: 'Valor (RS)'),
                )
              ],
            )
          ],
        );
      });
}
