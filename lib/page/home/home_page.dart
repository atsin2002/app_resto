import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';

  const HomePage({super.key});

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => HomePage(), 
        settings: RouteSettings(name: routeName));
  }

 
   @override
  State<HomePage> createState() => _HomePageStates();
}

class _HomePageStates extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold( body:  CustomScrollView(
      slivers: 
      [SliverAppBar(title: Text("Home",textAlign: TextAlign.center,), 
      leading: IconButton( icon: Icon(  Icons.menu),onPressed: (){}),
      actions: [IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))],)]),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed:(){}, child: Icon(Icons.home),) ,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: Container(
          color: Colors.black38,
          child: BottomAppBar(
            shape: CircularNotchedRectangle() ,
            child: Row(children: [
              Spacer(),
              IconButton(
              onPressed: (){}, icon: Icon(
                Icons.add_alert),color: Colors.green,),
                Spacer(),
                Spacer(),
                IconButton(
              onPressed: (){
                Navigator.pushNamed(context, '/');              }, icon: Icon(
                Icons.account_circle), color: Colors.green,),
                Spacer(),
                
                
                ]),
          ),
        ),
      ),);
  }
}

