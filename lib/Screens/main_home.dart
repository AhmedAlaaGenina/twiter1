import 'package:flutter/material.dart';

// Screens tabs
import 'tabs/Home.dart';
import 'tabs/notifications.dart';
import 'tabs/Search.dart';
import 'tabs/msg.dart';

//Component

import 'Component/Drawer.dart';

class Main_home extends StatefulWidget {
  @override
  _Main_homeState createState() => _Main_homeState();
}

class _Main_homeState extends State<Main_home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "الرئيسية",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: CircleAvatar(
                foregroundColor: Colors.white,
                child: InkWell(
                    onTap: () {
                      //Navigator.of(context).push(MaterialPageRoute(builder:(context)=>drawer()));
                    },
                    child: Image(
                      image: AssetImage("images/microsoft-img.png"),
                      width: 35,
                    ))),
          ),
          bottom: TabBar(
              indicatorColor: Theme.of(context).accentColor,
              unselectedLabelColor: Colors.grey,
              labelColor: Theme.of(context).accentColor,
              tabs: <Tab>[
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.search),
                ),
                Tab(
                  icon: Icon(Icons.notifications_none),
                ),
                Tab(
                  icon: Icon(Icons.mail_outline),
                ),
              ]),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: TabBarView(
              //controller: ,
              children: <Widget>[Home(), Search(), Notifications(), Message()]),
        ),
      ),
    );
  }
}
