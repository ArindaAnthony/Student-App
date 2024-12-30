import 'package:flutter/material.dart';
import 'package:student_app/Models/student_model.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<StudentModel> a =[
      StudentModel(name: "Anthony", hall: "Nkrumah", age: 20, year: 2017),
      StudentModel(name: "Andrew", hall: "Livingstone", age: 19, year: 2019),
      StudentModel(name: "Morris", hall: "Nkrumah", age: 24, year: 2015),
      StudentModel(name: "Ian", hall: "Nana", age: 23, year: 2015),
      StudentModel(name: "John", hall: "Lumumba", age: 17, year: 2017),
      StudentModel(name: "Mary", hall: "Complex", age: 22, year: 2019),
      StudentModel(name: "Stuart", hall: "Nsibirwa", age: 25, year: 2017),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Padding(
        padding:  const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index){
              return ListTile(
                title: Text(a[index].name),
                subtitle:Text(a[index].hall, style: const TextStyle(color: Colors.blue),),
                trailing: Text("${a[index].year}", style: const TextStyle(color: Colors.red),),
              );
            }),
      ),
    );
  }
}
