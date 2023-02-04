import 'package:flutter/material.dart';
import 'package:tribe_v3/feed_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<BottomNavigationBarItem> btmNavItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
    BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add'),
    BottomNavigationBarItem(icon: Icon(Icons.healing), label: 'tribe'),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'me'),
  ];

  int _selectedIndex = 0;

  static List<Widget> _screens = <Widget>[
    Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black12, width: 2),
      ),
      child: Column( children:[Text('home임'), Image.asset('dog.png'),], ),
    ),
    Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black12, width: 2),
      ),
      child: Column( children:[Text('search임'), Image.asset('dog.png'),], ),
    ),
    Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black12, width: 2),
      ),
      child: Column( children:[Text('add임'), Image.asset('dog.png'),], ),
    ),
    Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black12, width: 2),
      ),
      child: Column( children:[Text('tribe임'), Image.asset('dog.png'),], ),
    ),
    FeedScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('인스타그램임', style: TextStyle(color: Colors.black) ),
        backgroundColor: Colors.white,
      ), */
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: btmNavItems,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onBtmItmClick,
      ), //BottomAppBar
    );
  }

  void _onBtmItmClick(int index){
    //print(index);
    setState((){
      _selectedIndex = index;
    });
  }
}
