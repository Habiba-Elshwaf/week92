import 'package:flutter/material.dart';

void main() {
  runApp( MyApp ());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Week92() ,
    );
  }
}

class Week92 extends StatelessWidget {
  const Week92();

  @override
  Widget build(BuildContext context) {
    List text1 = [
      "Communication System Quiz",
      "OS Report",
      "Buy some stuff",
      "Go to the Gym",
      "Flutter Task",
      "Flutter Task بردو"
    ];
    List text2 = [
      "10:00 AM",
      "11:00 AM",
      "1:00 PM",
      "2:00 PM",
      "4:00 PM",
      "6:00 PM"
    ];
    return Scaffold(
          backgroundColor: Color(0xff4368FF),
          body: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Todo List",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: List.generate(text1.length, (index) {
                    return Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0 ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${text1[index]}",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white,fontWeight:FontWeight.bold ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "${text2[index]}",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            IconButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text("Delete"),
                                        content: Text(
                                            "Are you sure you want to delete this item?"),
                                        actions:<Widget> [
                                          TextButton(
                                            child: const Text('Cancel',style: TextStyle(color: Colors.grey)),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          TextButton(
                                            child: const Text('Yes',style: TextStyle(color: Colors.red)),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    });
                              },
                              icon: Icon(
                                Icons.delete_outlined,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        );
  }
}
