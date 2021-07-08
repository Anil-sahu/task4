import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';

//import 'package:flutter/services.dart' show rootBundle;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'task2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Task2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "Please fill empty Area";
  bool clicked = false;
  final nameController = new TextEditingController();
  final passController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.account_box_outlined),

        title: Text("task 3"),
        // leading: IconButton(
        //   icon:Icon(Icons.verified_user_rounded),
        //   onPressed: ()=>Scaffold.of(context).openDrawer(),
        // ),
        backgroundColor: Color.fromRGBO(14, 28, 3, 1),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Image(
                    width: 100,
                    height: 100,
                    image: AssetImage('assets/code.png'),

                    //decoration: BoxDecoration(color: Colors.blue
                  ),
                  Text(
                    "Hello! coder",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.people_alt_outlined),
              title: Text("User"),
              subtitle: Text("user"),
              trailing: Icon(Icons.edit_outlined),
              onTap: () {
                Fluttertoast.showToast(
                  msg: "I am user",
                  toastLength: Toast.LENGTH_SHORT,
                  backgroundColor: Colors.pink,
                  textColor: Colors.green,
                  fontSize: 20,
                );
              },
            ),
            Divider(
              color: Colors.blue,
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text("Home"),
              subtitle: Text("home"),

              /// trailing: Icon(Icons.edit_outlined),
              onTap: () {
                Fluttertoast.showToast(
                    msg: "This is Center Short Toast",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
            ),
            Divider(
              color: Colors.blue,
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.settings_suggest_outlined),
              title: Text("Setting"),
              subtitle: Text("setting"),
              // trailing: Icon(Icons.edit_outlined),
              onTap: () {
                Fluttertoast.showToast(
                    msg: "This is Center Short Toast",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
            ),
            Divider(
              color: Colors.blue,
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip_outlined),
              title: Text("Privacy"),
              subtitle: Text("privacy"),

              /// trailing: Icon(Icons.edit_outlined),
              onTap: () {
                Fluttertoast.showToast(
                    msg: "This is Center Short Toast",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
            ),
            Divider(
              color: Colors.blue,
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
              subtitle: Text("help"),
              // trailing: Icon(Icons.edit_outlined),
              onTap: () {
                Fluttertoast.showToast(
                    msg: "This is Center Short Toast",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
            ),
            Divider(
              color: Colors.blue,
              height: 20,
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.black12,
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 10,
                  ),
                  Expanded(
                    child: Image.network(
                        "https://cdn.pixabay.com/photo/2021/01/29/17/17/sky-5961642_1280.jpg"),
                  ),
                  SizedBox(
                    height: 50,
                    width: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: Image.network(
                        "https://cdn.pixabay.com/photo/2021/04/22/15/46/landscape-6199355_1280.jpg"),
                  ),
                  SizedBox(
                    height: 50,
                    width: 10,
                    child: Text("this is Sizebox"),
                  ),
                  Expanded(
                      child: Image.network(
                          "https://cdn.pixabay.com/photo/2019/10/14/14/43/flowers-4549084_1280.jpg"))
                ],
              ),
            ),
            SizedBox(
              height: 10,
              width: double.infinity,
            ),
            Container(
              width: 300,
              //mainAxisAlignment: MainAxisAlignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: "Name",
                      // icon: Icon(Icons.email_outlined),
                      hintText: "Please Enter your Name",
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    controller: passController,
                    decoration: InputDecoration(
                      fillColor: Colors.red,
                      labelText: "Email",
                      hintText: "Enter your email",
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Text(
                      text,
                      style: TextStyle(
                        color: clicked ? Colors.red : Colors.green,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var name = nameController.text;
                      var email = passController.text;
                      if (name.trim().isNotEmpty && email.trim().isNotEmpty) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondScreen(name, email),
                          ),
                        );
                        text = "please! submit your details ";
                      } else if (name.isEmpty && email.isEmpty) {
                        text = "Please fill empty area & submit";
                      }

                      // setState(() async {
                      //   if (clicked == true) {
                      //     text = "Login successful";
                      //     clicked = false;
                      //   } else if (clicked == false) {
                      //     text = "Login failed";
                      //     clicked = true;
                      //   }
                      // });
                    },
                    child: Text("Submit"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//https://github.com/Anil-sahu/task4.git

class SecondScreen extends StatelessWidget {
  //const SecondScreen({ Key? key }) : super(key: key);
  final name1;
  final email1;
  SecondScreen(this.name1, this.email1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondScreen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Thank you! " + name1,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.green,
                ),
              ),
            ),
            Container(
              child: Text(
                "You Entered:",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                ),
              ),
            ),
            Container(height: 50),
            Container(
              height: 200,
              width: double.infinity,
              //color: Colors.yellow,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  border: Border.all(
                    width: 3,
                    color: Colors.pink.shade400,
                  ),
                  color: Colors.blueAccent),
              child: Container(
                margin: new EdgeInsets.all(30),
                child: Text(
                  "Name : " + name1 + "\nEmail : " + email1,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.pink,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.facebook_outlined,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.phone_outlined,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.message_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
