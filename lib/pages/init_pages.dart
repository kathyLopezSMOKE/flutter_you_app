import 'package:flutter/material.dart';
import 'package:flutter_you_app/ui/general/colors.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}): super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {

  int _currentIndex=0;

  List<Widget> _pages=[
    Center(child: Text("Principal"),),
    Center(child: Text("Short"),),
    Center(child: Text("Agregar"),),
    Center(child: Text("Suscripcion"),),
    Center(child: Text("Biblioteca"),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: KBrandPrimaryColor,
        title: Image.asset(
          'assets/images/logo.png',
          height: 26,
        ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(
              Icons.cast,
              color:Colors.white
            ),
          ),
          IconButton(
            onPressed: (){}, 
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(
              Icons.notifications_none,
              color:Colors.white
            ),
            Positioned(
              top: -2,
              right: -4,
              child: Container(
                padding: EdgeInsets.all(2.4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: Text("9+", style: TextStyle(fontSize: 11,),),
              ),
            ),
              ],
            ),
          ),
          IconButton(
            onPressed: (){}, 
            icon: Icon(
              Icons.search,
              color:Colors.white
            ),
          ),
          const SizedBox( width: 6.0,),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 14.0,
            backgroundImage: NetworkImage("https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg"),
          ),
          const SizedBox( width: 12.0,),
        ],
      ),
      body: _pages[_currentIndex],
      backgroundColor: KBrandPrimaryColor, //color fondo
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: KBrandPrimaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        selectedFontSize: 12.0,
        unselectedFontSize: 12.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: (int value){
          _currentIndex=value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            label: "Principal",
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: "Shorts",
            icon: Icon(Icons.play_arrow_rounded),
          ), 
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              margin: const EdgeInsets.only(top: 4.0),
              child: const Icon(
                Icons.add_circle_outline,
                size: 30.0,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Suscripciones",
            icon: Icon(Icons.subscript_rounded),
          ),
          BottomNavigationBarItem(
            label: "Biblioteca",
            icon: Icon(Icons.video_call_rounded),
          ),         
        ],
      ),
    );
  }
}