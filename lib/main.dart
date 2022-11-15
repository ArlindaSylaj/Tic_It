import 'package:flutter/material.dart';
import 'package:tic_it/components/footer.dart';
import 'package:tic_it/components/buildAppBar.dart';
import 'package:tic_it/components/menu.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  BuildAppBar appBar = BuildAppBar();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FFK',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
             drawerEnableOpenDragGesture: false,
             drawer: const Menu(),
        appBar: BuildAppBar.buildAppbar(),
        body: const MyHomePage(),
      ),
    );
  }
  }

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                  children:  <Widget>[
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40.0),
                              child: Column(
                                children: const <Widget>[
                                  Text(
                                  'Mirë se vini',
                                  style: TextStyle(
                                      color: Color(0xff181818),
                                      fontSize: 29.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily:'Pacifico'
                                  ),
                                ),
                                  Text('Federata e Futbollit e Kosovës')
                                ],
                              ),
                            ),
                          ),
                          GridView.count(
                              primary: false,
                              padding: const EdgeInsets.all(20),
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 1,
                              crossAxisCount: 2,
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              scrollDirection: Axis.vertical,
                            children: <Widget>[

                              Image.asset('assets/images/im1.jpg',),
                              Image.asset('assets/images/im4.jpg'),
                              Image.asset('assets/images/im2.jpg'),
                              Image.asset('assets/images/im3.jpeg'),

                              Image.asset('assets/images/im1.jpg',),
                              Image.asset('assets/images/im4.jpg'),
                              Image.asset('assets/images/im2.jpg'),
                              Image.asset('assets/images/im3.jpeg'),

                            ]
                          ),

                    const Footer(),
                  ],
                ),
            ),
    );
  }
}

