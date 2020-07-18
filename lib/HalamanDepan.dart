import 'dart:ffi'; 
import 'package:flutter/material.dart';

class Depan extends StatefulWidget {
  Depan({Key key}) : super(key: key);
  @override
  _DepanState createState() => _DepanState();
}

class _DepanState extends State<Depan> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
     HalamanDepan(), 
     Sekolah(), 
     Karambia(),
  ];
 
  @override
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  } 
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Bisnis'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('My Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}   

class HalamanDepan extends StatefulWidget {
  @override
  // static const String _title = 'Flutter Code Sample'; 
  _HalamanDepanState createState() => _HalamanDepanState();
} 

class _HalamanDepanState extends State<HalamanDepan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.red,
        title: Row(
            children : <Widget>[ 
              Icon(Icons.verified_user),
              Text('Karambia Condong - Aplikasi'),  
            ],),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset('assets/1.jpg'),
                  //ListView(
                  const ListTile(
                    // leading: NetworkImage('asdad'),
                    title: Text('Halaman kedua aplikasi'),
                    subtitle: Text(
                        'halaman ketiga aplikasi halaman ketiga aplikasihalaman ketiga aplikasi halaman ketiga aplikasi '),
                  ),
                  // ),
                Row(
                  children: <Widget>[
                    FlatButton.icon(
                          color: Colors.green,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Detaildata()));
                          },
                          
                  icon: Icon(Icons.dashboard),
                  label : Text('Rp 230.001',
                    style: TextStyle(color: Colors.black),
                    ),   
                  ),
                    
                  FlatButton.icon(
                      color: Colors.green,
                       icon: Icon(Icons.done),
                       label: Text('Rp .200.000'),
                       onPressed: null,   
                     ), 
                    ],
                 ),
                ],
              ), 
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset('assets/2.jpg'),
                  //ListView(
                  const ListTile(
                    // leading: NetworkImage('asdad'),
                    title: Text('Pulau Karambia'),
                    subtitle: Text(
                        'Sensasi Liburan terkini '),
                  ),
                  // ),
                 Row(
                   children: <Widget>[
                   FlatButton.icon(
                          color: Colors.green,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Detaildata()));
                          },
                  icon: Icon(Icons.dashboard),
                  label : Text('Klik detail halaman')),
                    
                  FlatButton.icon(
                      color: Colors.green,
                       icon: Icon(Icons.done),
                       label: Text('Detail Data'),
                       onPressed: null,   
                     ), 
                    ],
                 ),
                ],
              ), 
            ),  

                 Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset('assets/1.jpg'),
                  //ListView(
                  const ListTile(
                    // leading: NetworkImage('asdad'),
                    title: Text('Pulau Karambia'),
                    subtitle: Text(
                        'Sensasi Liburan terkini '),
                  ),
                  // ),
                 Row(
                   children: <Widget>[
                   FlatButton.icon(
                          color: Colors.green,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Detaildata()));
                          },
                  icon: Icon(Icons.dashboard),
                  label : Text('Klik detail halaman',style: TextStyle(color: Colors.white))),
                    
                  FlatButton.icon(
                      color: Colors.green,
                       icon: Icon(Icons.done),
                       label: Text('Detail Data'),
                       onPressed: null,   
                     ), 
                    ],
                 ),
                ],
              ), 
            ),  
        ],
      ),
    );
  }
}
 
class Detaildata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail data Ismarianto')),
      body: Container(
          child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Center(child: Image.asset('assets/1.jpg')),
            Padding(
              padding : EdgeInsets.only(top:12.0,left:12.0),child:
              Row(
              children: <Widget>[   
               Icon(Icons.star_half,color: Colors.blue.shade400,),
               Icon(Icons.star_half,color: Colors.blue.shade400,),
               Icon(Icons.star_half,color: Colors.blue.shade400),
               Icon(Icons.star,color: Colors.blue.shade400,),  
            ])),
              Center(     
              child: ListTile(
                title: Text('Ismarianto',style: TextStyle(fontFamily : 'tahoma',fontSize: 18)),
                subtitle: Text(
                    'halaman ketiga aplikasi saya berasalah dari sumatera barat  dari sumatera barat  dari sumatera barat dari sumatera barat dari sumatera barat'),
              ), 
             ),
  

           ],
         ),
      ),
    );
  }
}

class Karambia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : AppBar(title : Text('Detail halaman')),
        body: ListView(children:<Widget>[
          Image.asset('assets/1.jpg'),
          const ListTile(
            title: Text('ini adalaha detail halaman karambia',style: TextStyle(
              fontFamily: 'algerian',
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),),
            subtitle: Text('ini juga halamana detail nya'),
          )

        ]),
    );
  }
}

  class Sekolah extends StatefulWidget {
      Sekolah({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SekolahState createState() => new _SekolahState();
}

class _SekolahState extends State<Sekolah> {
  List<String> widgetList = ['A', 'B', 'C'];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        child: new GridView.count(
          crossAxisCount: 2,
          childAspectRatio: (itemWidth / itemHeight),
          controller: new ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: widgetList.map((String value) {
            return new Container(
              color: Colors.green,
              margin: new EdgeInsets.all(1.0),
              child: new Center(
                child: new Text(
                  value,
                  style: new TextStyle(
                    fontSize: 50.0,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}