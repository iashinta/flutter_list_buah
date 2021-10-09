import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Pemrograman',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Daftar Buah'),
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
  Items buah1 = new Items(
    nama: "Apel",
    img: "assets/apel.png"
  );

  Items buah2 = new Items(
    nama: "Anggur",
    img: "assets/anggur.png",
  );
  Items buah3 = new Items(
    nama: "Durian",
    img: "assets/durian.png",
  );
  Items buah4 = new Items(
    nama: "Jeruk",
    img: "assets/jeruk.png",
  );
  Items buah5 = new Items(
    nama: "Pisang",
    img: "assets/pisang.png",
  );
  Items buah6 = new Items(
    nama: "Semangka",
    img: "assets/semangka.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> ListBuah = [buah1, buah2, buah3, buah4, buah5, buah6];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.all(10.0),
          itemCount: ListBuah.length,
          itemBuilder: (BuildContext context, int index){
            return Card(
              elevation: 5,
              child: ListTile(
                contentPadding: EdgeInsets.all(15.0),
                title: Text(ListBuah[index].nama, style: TextStyle(fontSize: 24),),
                leading: CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.transparent,
                  child: Image.asset(ListBuah[index].img, fit: BoxFit.cover),
                )
              )
            );
          }
        )
      )
    );
  }
}

class Items {
  String nama;
  String img;
  Items({required this.nama, required this.img});
}


