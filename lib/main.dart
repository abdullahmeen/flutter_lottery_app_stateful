import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int x = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Lottery App UI'),
          ),
          body: SafeArea(
              child: Center(
                child: Text(x.toString(),
                  style: TextStyle(
                    fontSize: 50,
                  ),),
              )
          ),
          floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: ()
              {
                x++;
                setState(() {

                });
                print(x);
              }

          ),
        )

    );
  }
}

