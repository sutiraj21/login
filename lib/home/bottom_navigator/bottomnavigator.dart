import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottomnavigation extends StatefulWidget {
  const bottomnavigation({super.key});

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  var _selectedindex=0;

  // static const List<Widget> screen = [homescreen(), postedjobs(), list1(),];
  // void _bottomnavclick(int index){
  //   setState(() {
  //     _selectedindex = index;
  //   });
  // }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(" IndiaHiring",style: TextStyle(color: Colors.blue,fontSize: 20,),
            ),SizedBox(width: MediaQuery.sizeOf(context).width*0.15,),
            IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell_solid,color: Colors.blue,)
            )
          ],
        ),centerTitle: true,),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                accountName: Text(" Suti Raj",style: TextStyle(color: Colors.black,fontSize: 25,),),
                accountEmail: Text(" sutiraj.21@gmail.com ")
            ),
            // ListTile(
            //   leading: Icon(Icons.person,),title: Text(" Profile Setup"),
            // ),
            ListTile(leading: Row(
              children: [
                Text(" home",style: TextStyle(color: Colors.black,fontSize: 20,),),
                SizedBox(width: MediaQuery.sizeOf(context).width*0.07,
                ),Icon(Icons.home,color: CupertinoColors.black,)],
            ),
              onTap: (){
              Navigator.pop(context);
            },
            ),
            ListTile(leading: Row(
              children: [
                Text(" My Profile",style: TextStyle(color: Colors.black,fontSize: 20,),),
                SizedBox(width: MediaQuery.sizeOf(context).width*0.07,
                ),Icon(Icons.home,color: CupertinoColors.black,)],
            ),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],

        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue.shade50,
          items: <BottomNavigationBarItem>
          [
            BottomNavigationBarItem(backgroundColor: Colors.black38,
                icon: Icon(Icons.home, weight: 100,color: Colors.black,),
              label: "Home",
            ),
            BottomNavigationBarItem(backgroundColor: Colors.black38,
              icon: Icon(Icons.search, weight: 100,color: Colors.black,),
              label: "Search",
            ),
            BottomNavigationBarItem(backgroundColor: Colors.black38,
              icon: Icon(Icons.notifications_outlined, weight: 100,color: Colors.black,),
              label: "Notification",)
          ],selectedFontSize: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedindex,
        unselectedFontSize: 15,
        // onTap: _bottomnavclick,
      ),

      body: Container(
        
      ),




    );
  }
}
