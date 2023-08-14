import 'package:flutter/material.dart';

import 'barradeprogresso.dart';

class Task extends StatefulWidget {
  final String taskDescription;
  final String link;
  final int dificuldade;
  int lvl = 0;

  Task({
    Key? key,
    required this.taskDescription,
    required this.link,
    required this.dificuldade,
  }) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  upLvl() {
    setState(() {
      widget.lvl++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            alignment: AlignmentDirectional.bottomCenter,
            padding: const EdgeInsets.only(bottom: 10),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.blue),
            child: ProgressBar(widget.lvl),
          ),
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.grey[200],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.network(
                      widget.link,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          widget.taskDescription,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 15,
                            color: widget.dificuldade >= 1
                                ? Colors.blue
                                : Colors.blue[100],
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: widget.dificuldade >= 2
                                ? Colors.blue
                                : Colors.blue[100],
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: widget.dificuldade >= 3
                                ? Colors.blue
                                : Colors.blue[100],
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: widget.dificuldade >= 4
                                ? Colors.blue
                                : Colors.blue[100],
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: widget.dificuldade >= 5
                                ? Colors.blue
                                : Colors.blue[100],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    upLvl();
                  },
                  child: const SizedBox(
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.arrow_drop_up),
                        Text("UP")
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}