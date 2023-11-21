import 'package:flutter/material.dart';
import 'package:navi/screen2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class screen1 extends StatelessWidget {
  screen1({super.key});
  final _textController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: _textController,
              ),
              ElevatedButton(
                onPressed: () {
                  saveDataToStorage();
                },
                child: Text("save"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future saveDataToStorage() async{
    print(_textController.text); 

     final sharedPrefs=await SharedPreferences.getInstance();
     await sharedPrefs.setString('saved value', _textController.text);
    }
}
