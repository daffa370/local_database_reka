import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqflite_materi/pages/create/controller.dart';

class CreatePage extends GetView<CreateController> {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller.titleController,
              decoration: InputDecoration(
                  labelText: "Title", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller.contentController,
              decoration: InputDecoration(
                  labelText: "Content", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: controller.onSubmit, child: Text("SUBMIT")),
          ],
        ),
      ),
    );
  }
}
