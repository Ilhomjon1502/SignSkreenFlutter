import 'package:flutter/material.dart';

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
            visualDensity: VisualDensity.adaptivePlatformDensity
        ),
        home: SignScrren()
    );
  }
}

class SignScrren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        elevation: 0,),
      body: Container(
        color: Colors.white,
        width: double.infinity, //ekranni oxirigacha egallash
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text("Sign in",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                //faqat ikki tomonidan padding berish
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.grey, style: BorderStyle.solid)
                    ),
                    focusedBorder: OutlineInputBorder( //ushbu widgetda focus bo'lgan holatda
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey, style: BorderStyle.solid)
                    ),
                    hintText: "E-mail Address",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 20)
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 35),
                //faqat ikki tomonidan padding berish
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.grey, style: BorderStyle.solid)
                    ),
                    focusedBorder: OutlineInputBorder( //ushbu widgetda focus bo'lgan holatda
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey, style: BorderStyle.solid)
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 20)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red, shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  )),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Log in",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(child: Text("OR", style: TextStyle(fontSize: 20),)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent, shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Facebook Login",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

