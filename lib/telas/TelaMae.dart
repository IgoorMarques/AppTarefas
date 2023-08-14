import 'package:flutter/material.dart';
import '../components/tarefa.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projetinho Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tarefas"),
        ),
        body: ListView(children: [
          Task(
            taskDescription: 'taskDescription',
            link:
                "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large",
            dificuldade: 1,
          ),
          Task(
            taskDescription: 'taskDescription',
            link:
                "https://tswbike.com/wp-content/uploads/2020/09/108034687_626160478000800_2490880540739582681_n-e1600200953343.jpg",
            dificuldade: 2,
          ),
          Task(
            taskDescription: 'taskDescription',
            link:
                "https://tswbike.com/wp-content/uploads/2020/09/108034687_626160478000800_2490880540739582681_n-e1600200953343.jpg",
            dificuldade: 3,
          ),
          Task(
            taskDescription: 'taskDescription',
            link:
                "https://tswbike.com/wp-content/uploads/2020/09/108034687_626160478000800_2490880540739582681_n-e1600200953343.jpg",
            dificuldade: 4,
          ),
        ]),
      ),
    );
  }
}
