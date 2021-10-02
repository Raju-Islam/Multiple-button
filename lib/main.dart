import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: baseApp(),
        routes: <String, WidgetBuilder>{
          "/LoginAsUser": (context) => LoginAsUser(),
          "/LoginAsGuest": (context) => LoginAsGuest(),
        });
  }
}

class baseApp extends StatelessWidget {
  const baseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: Text("MPA Application"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              MaterialButton(
                  child: Text(
                    "LoginAsUser",
                    style: new TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                  onPressed: () {
                    Navigator.pushNamed(context, "/LoginAsUser");
                  }),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                  child: Text(
                    "LoginAsGuest",
                    style: new TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                  onPressed: () {
                    Navigator.pushNamed(context, "/LoginAsGuest");
                  })
            ],
          ),
        ));
  }
}

class LoginAsUser extends StatelessWidget {
  const LoginAsUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text("Welcome User..."),
      ),
    );
  }
}

class LoginAsGuest extends StatelessWidget {
  const LoginAsGuest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text("Welcome Guest..."),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            new Text(
              "Bangldesh",
              style:
                  new TextStyle(fontSize: 20.00, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 7.80),
            new Text(
                "সূচনা : এই ভূ-স্বর্গের রূপসি কন্যা বাংলা। সুজলা সুফলা শস্য শ্যামলা আমাদের এই বাংলাদেশ। আমরা বাংলাদেশে জন্মেছি বলে আমদের জীবন ধন্য হয়েছে। আমরা সবাই বাঙালি। বাংলাদেশ দক্ষিণ এশিয়ার একটি স্বাধীন দেশ। এদেশের মতো এত সুন্দর দেশ আর কোথাও খুঁজে পাওয়া যাবে না। তাই তো কবি বলেছেন-"),
            SizedBox(
              height: 5.00,
            ),
            new Text("জন্ম ও পরিচয়"),
            new Text(
                "মুন্সী আব্দুর রউফ ১৯৪২ সালের ১লা মে ফরিদপুর জেলার বোয়ালমারী থানার সালামতপুর গ্রামে জন্মগ্রহণ করেন। তাঁর বাবার নাম মুন্সী মেহেদী হাসান এবং মায়ের নাম মুকিদুন্নেসা। ইস্ট বেঙ্গল রেজিমেন্টে তিনি সৈনিক হিসেবে কর্মরত ছিলেন।")
          ],
        ),
      ),
    );
  }
}
