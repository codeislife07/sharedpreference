import 'package:flutter/material.dart';
import 'package:sharedpreference/SharedPref.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var name=TextEditingController();

  String value="";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataassign();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            TextField(
              controller: name,
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              SharedPref().prefSetString("name", name.text);
            }, child: Text("Store Shared_Preference Data")),

            SizedBox(height: 50,),
            Text(value)

          ],
        ),
      ),
    );
  }

  void dataassign()async {
    var data=await SharedPref().prefGetString("name", "");
    setState(() {
      value=data;
    });
}
}
