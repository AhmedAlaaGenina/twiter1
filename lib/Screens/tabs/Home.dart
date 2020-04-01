import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Widget _buildTwitt()
  {
    return Container(
      height: MediaQuery.of(context).size.height,
     width: MediaQuery.of(context).size.width,
     child: ListView.builder(
         itemCount: text_list.length,
         itemBuilder: (BuildContext context,int index){
       return Column(
         children: <Widget>[
           ListTile(

                 leading: CircleAvatar(
                   maxRadius: 25,
                     foregroundColor:Colors.white ,
                     child:Image(image: AssetImage("images/microsoft-img.png"),width:50,)),

                 title: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Row(
                       children: <Widget>[
                         Text("User Name",style: TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.bold,
                             fontSize: 15
                         ),),
                         SizedBox(width: 10,),
                         Text("@User_Name",style: TextStyle(
                           color: Colors.grey,
                             fontSize: 10

                         ),),
                         SizedBox(width: 10,),

                         Text("20 h",style: TextStyle(
                           color: Colors.grey,
                             fontSize: 10

                         ),),
                       ],
                     ),

                     IconButton(
                       icon: Icon(Icons.keyboard_arrow_down,size: 20,color: Colors.grey,),
                       onPressed: (){},
                       padding: EdgeInsets.all(0),
                     alignment: Alignment.centerLeft,
                     )

                   ],
                 ),
                 subtitle: Column(
                   children: <Widget>[
                     Text("${text_list[index]}",style: TextStyle(
                       color: Colors.black,
                     ),),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: <Widget>[
                         Row(
                           children: <Widget>[
                             IconButton(icon: Icon(Icons.chat_bubble,color: Colors.grey,size: 20,), onPressed: (){}),
                             Text("3",style: TextStyle(
                             color: Colors.grey,
               ),),
                           ],
                         ),
                         Row(

                           children: <Widget>[
                             IconButton(icon: Icon(Icons.pages,color: Colors.grey,size: 20,), onPressed: (){}),
                             Text("3",style: TextStyle(
                               color: Colors.grey,
                             ),),
                           ],
                         ),
                         Row(

                           children: <Widget>[
                             IconButton(icon: Icon(Icons.favorite_border,color: Colors.grey,size: 20,), onPressed: (){}),
                             Text("130",style: TextStyle(
                               color: Colors.grey,
                             ),),
                           ],
                         ),
                         Row(
                           children: <Widget>[
                             IconButton(icon: Icon(Icons.share,color: Colors.grey,size: 20,), onPressed: (){}),
                           ],
                         ),

                       ],
                     ),

                   ],
                 ),


               ),
           Divider()
         ],
       );
     }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(

      children: <Widget>[
        _buildTwitt(),
        SizedBox(
          height: 50,
          child: Text("data"),
        ),
      ],
    );
  }
}


List<String> text_list=[
  'Coordinates tab selection between a TabBar and a TabBarView.',
  '20‏/01‏/2019 - Flutter is a mobile App SDK by Google which helps in creating modern ... In the picture above, the AppBar is having a title and a TabBar which has ... We can either use the controller: parameter of the TabBar widget or we can ...',
  ' _tabController, tabs: ',
  'Along with the title, the widget AppBar can have an additional constructor parameter called bottom and this is where we provide a TabBar widget as input parameter.',
  'Coordinates tab selection between a TabBar and a TabBarView.',
  '20‏/01‏/2019 - Flutter is a mobile App SDK by Google which helps in creating modern ... In the picture above, the AppBar is having a title and a TabBar which has ... We can either use the controller: parameter of the TabBar widget or we can ...',
  ' _tabController, tabs: ',
  'Along with the title, the widget AppBar can have an additional constructor parameter called bottom and this is where we provide a TabBar widget as input parameter.',

];