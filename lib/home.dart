// ignore_for_file: non_constant_identifier_names
// @dart=2.9

import 'package:eglogics_app/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

   Map<DateTime, List<dynamic>> _events;
   List<dynamic> _selectedEvents;
   DateTime _selectedDate;

   CalendarController _controller;
  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
    _events = {
      DateTime(2022, 4, 20) : ['Invitation!!', 'Birthday Celebration', 'ABC', 'Weekly Meeting'],
      DateTime(2022, 4, 25) : ['Weekly Testing'],
      DateTime(2022, 4, 4) : ['Weekly Testing'],
      DateTime(2022, 4, 11) : ['Weekly Testing'],
      DateTime(2022, 4, 18) : ['Weekly Testing'],
    };
  }

  Map<String, dynamic> encodeMap(Map<DateTime, dynamic> map) {
    Map<String, dynamic> newMap = {};
    map.forEach((key, value) {
      newMap[key.toString()] = map[key];
    });
    return newMap;
  }

  Map<DateTime, dynamic> decodeMap(Map<String, dynamic> map) {
    Map<DateTime, dynamic> newMap = {};
    map.forEach((key, value) {
      newMap[DateTime.parse(key)] = map[key];
    });
    return newMap;
  }




  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                child: Container(
              height: 50,
              width: 150,
              color: Colors.white70,
              child: Image.asset('assets/new logo.png'),
            )),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Dashboard"),
              onTap: () {
                Navigator.push(context,  
    MaterialPageRoute(builder: (context) => Dashboard()),  
  );  
              },
            ),
            ListTile(
              leading: Icon(Icons.bookmarks_sharp),
              title: Text("MyProject"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.add_task_outlined),
              title: Text("Addtimesheet"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Reminder"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.campaign),
              title: Text("Notice Board"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.add_task_outlined),
              title: Text("Application"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(padding: EdgeInsets.only(top: 90)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('visit us on '),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(''),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 28,
                        child: Image.asset("assets/facebook_logo.png"),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 28,
                        child: Image.asset("assets/Email_logo.webp"),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 28,
                        child: Image.asset("assets/Instagram_logo.webp"),
                      ),
                    ),
                    const Text(''),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  child: Image.asset('assets/new logo.png'), //Text
                ),
                Text(
                  "priyanshu Tomar",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            )),
            // const UserAccountsDrawerHeader(
            //   accountName: Text("AppMaking.co",style: TextStyle(color: Colors.black,fontSize: 20),),
            //   accountEmail: Text("sundar@appmaking.co"),
            //   currentAccountPicture: CircleAvatar(
            //     backgroundImage: NetworkImage(
            //         " "),
            //   ),
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: NetworkImage(
            //         " ",
            //       ),
            //       fit: BoxFit.fill,
            //     ),
            //   )
            //   ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text("Change password"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.bookmarks_sharp),
              title: Text("Application"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.add_task_outlined),
              title: Text("My Attendence"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            // alignment: Alignment.topCenter,
            children: [
              Column(
                children: [
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.red,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                                color: Colors.white,
                                onPressed: () {
                                  _key.currentState.openDrawer();
                                },
                                icon: Icon(
                                  Icons.menu,
                                  size: 25,
                                )),
                            Padding(padding: EdgeInsets.only(right: 38)),

                            Container(
                              height: 70,
                              width: 150,
                              child: Image.asset("assets/newwhitelogo.png",
                                  fit: BoxFit.fitWidth),
                            ),
                            // Text(
                            //   "EG{LOGICS}",
                            //   style: TextStyle(fontSize: 20),
                            // ),
                            Padding(padding: EdgeInsets.only(right: 17)),
                            IconButton(
                                color: Colors.white,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.notifications_active,
                                  size: 25,
                                )),
                            Padding(padding: EdgeInsets.only(right: 10)),
                            InkWell(
                              onTap: () {
                                _key.currentState.openEndDrawer();
                              },
                              child: Container(
                                width: 30,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                  child:
                                      Image.asset('assets/new logo.png'), //Text
                                ),
                              ),
                            ),
                            // IconButton(
                            //     color: Colors.white,
                            //     onPressed: () {},
                            //     icon: Icon(
                            //       Icons.person,
                            //       size: 25,
                            //     )),
                          ],
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(right: 30, bottom: 10),
                        //   child: Text(
                        //     'THE DOT COM EXPERTS',
                        //     style: TextStyle(fontSize: 8),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TableCalendar(
                        initialCalendarFormat: CalendarFormat.month,
                        calendarStyle: const CalendarStyle(
                            todayColor: Colors.red,
                            selectedColor: Colors.red,
                            todayStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,
                                color: Colors.white)),
                        headerStyle: HeaderStyle(
                          centerHeaderTitle: true,
                          formatButtonDecoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(22.0),
                          ),
                          formatButtonTextStyle:
                              const TextStyle(color: Colors.white),
                          formatButtonShowsNext: false,
                        ),
                        startingDayOfWeek: StartingDayOfWeek.sunday,
                        builders: CalendarBuilders(
                          selectedDayBuilder: (context, date, events) =>
                              Container(
                                  margin: const EdgeInsets.all(5.0),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      // color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child: Text(
                                    date.day.toString(),
                                    style: const TextStyle(color: Colors.white),
                                  )),
                          todayDayBuilder: (context, date, events) => Container(
                              margin: const EdgeInsets.all(5.0),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: Text(
                                date.day.toString(),
                                style: const TextStyle(color: Colors.white),
                              )),
                        ),
                        events: _events,
                        onDaySelected: (date, events,holidays) {
                          setState(() {
                            _selectedEvents = events;
                            _selectedDate = date;
                          });
                        },
                        calendarController: _controller,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200,top: 15),
                        child: Text('Notice Board',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      Container(
                child: _selectedEvents != null ? Column(
                  children: List.generate(_selectedEvents.length, (index) =>
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          // color: Colors.red,
                          
                          height: MediaQuery.of(context).size.height/7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),color: Colors.white54

                          ),
                          child:
                                Row(
                                  children: [
                                    // Padding(
                                    //   padding: const EdgeInsets.all(8.0),
                                    //   child: Container(
                                    //     padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
                                    //     height: MediaQuery.of(context).size.height/10,
                                    //     decoration: BoxDecoration(
                                    //       border: Border.all(color:Color(0xFF29AAE1)),
                                    //       color:Color(0xFF29AAE1),
                                    //       borderRadius: BorderRadius.circular(3.0),
                                    //     ),
                                    //     child: Text(DateFormat('d',).format(_selectedDate),
                                    //       style: TextStyle(fontWeight: FontWeight.bold),
                                    //     ),
                                    //   ),
                                    // ),

                                    Text(_selectedEvents[index],
                                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 20),
                                    ),
                                    Spacer(),
                                       Container(                        
                                        child: Text(DateFormat.yMMMMd().format(_selectedDate),
                                          style: TextStyle(fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                    
                                  ],
                                ),
                                
                          

                          ),
                        )
                      ),
                    ): Container(),
                      )
                  



                      // const Text('Notice Board')
                    ],
                  ),
                ],
              ),

              Positioned(
                top: 80,
                left: 20,
                right: 20,
                // bottom: 2,
                child: Container(
                    height: 150,
                    width: 330,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/bg-image.png"),
                            fit: BoxFit.fill)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 10.0, right: 10.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dashboard",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              carduse("10", "Task"),
                              Spacer(),
                              carduse("20", "Open Task"),
                              Spacer(),
                              carduse("15", "Project"),
                            ],
                          )
                        ],
                      ),
                    )),
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  Widget carduse(String Count, String name) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      height: 80,
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Count,
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Text(
            name,
            style: TextStyle(color: Colors.red, fontSize: 10),
          ),
        ],
      ),
    );
  }
}