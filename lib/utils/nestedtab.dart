import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NestedTabBar extends StatefulWidget {
  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  late TabController _nestedTabController;

  @override
  void initState() {
    super.initState();
    _nestedTabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          TabBar(
            controller: _nestedTabController,
            unselectedLabelColor: Colors.red,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 11,
            ),
            // indicatorWeight: 10,
            indicatorColor: Colors.red,
            indicator: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(8),
              color: Colors.red,
            ),

            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: "My agenda",
              ),
              Tab(
                text: "assigned to me",
              ),
              Tab(
                text: "assigned by me",
              ),
            ],
          ),
          Container(
            // color: Colors.red,
            height: MediaQuery.of(context).size.height,
            // height: 278,
            // height: screenHeight * 0.60,
            // margin: EdgeInsets.only(left: 15.0, right: 15.0,top: 5),
            child: TabBarView(
              controller: _nestedTabController,
              children: <Widget>[
                Column(
                  children: [
                    Container(
                      width: 300,
                      color: Colors.white70,
                      height: 90,
                      // color: Colors.green,
                      child: Row(
                        children: [
                          Container(
                            // color: Colors.yellow,
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.yellow),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Sunderdeep",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.alarm,
                            size: 13,
                            color: Colors.black26,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              '13 jan 2021',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w200),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      color: Colors.white70,
                      height: 90,
                      width: 300,
                      // color: Colors.green,
                      child: Row(
                        children: [
                          Container(
                            // color: Colors.yellow,
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Hausmarket",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.alarm,
                            size: 13,
                            color: Colors.black26,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              '13 jan 2021',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w200),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      color: Colors.white70,
                      height: 90,
                      width: 300,
                      // color: Colors.green,
                      child: Row(
                        children: [
                          Container(
                            // color: Colors.yellow,
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "process technology",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.alarm,
                            size: 13,
                            color: Colors.black26,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              '13 jan 2021',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w200),
                            ),
                          )
                        ],
                      ),
                    ),
                    FlatButton(
                      minWidth: MediaQuery.of(context).size.width,
                      //height: 50,
                      color: Colors.red[50],
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(1.0))),
                      child: Text(
                        "view all ",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return Home();
                        // }));
                        // onPressedLogin();
                      },
                    ),
                    Text(
                      'Notice board ',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Center(
                      child: SizedBox(
                        height: 130,
                        child: ListView(
                          shrinkWrap: true,
                          // padding: EdgeInsets.all(40),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              margin: EdgeInsets.all(8),
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: 80,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.yellow[50],),
                              child: Center ( child :Column(
                                children: [
                                  Text('invitation',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.yellow),),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 69),
                                    child: Container(
                                      color: Colors.yellow,
                                      height: 16,
                                      width: 70,
                                      child: Text(
                                        ' 13th jan'
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                            ),
                            Container(
                              margin: EdgeInsets.all(8),
                              width: MediaQuery.of(context).size.width * 0.6,
                              height: 80,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green[50],),
                              child: Center ( child :Column(
                                children: [
                                  Text('invitation',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green),),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 69),
                                    child: Container(
                                      color: Colors.green,
                                      height: 16,
                                      width: 70,
                                      child: Text(
                                        ' 13th jan'
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                            Container(
                              margin: EdgeInsets.all(8),
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: 80,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.pink[50],),
                              child: Center(child :Column(
                                children: [
                                  Text('invitation',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.pink),),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 69),
                                    child: Container(
                                      color: Colors.pink,
                                      height: 16,
                                      width: 70,
                                      child: Text(
                                        ' 13th jan'
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                              
                            ),
                            Container(
                              margin: EdgeInsets.all(8),
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: 80,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.red[50],),
                              child: Center( child :Column(
                                children: [
                                  Text('invitation',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red),),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 69),
                                    child: Container(
                                      color: Colors.red,
                                      height: 16,
                                      width: 70,
                                      child: Text(
                                        ' 13th jan'
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Upcoming Birthday',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Center(
                      child: SizedBox(
                        height: 180,
                        child: ListView(
                          shrinkWrap: true,
                          // padding: EdgeInsets.all(40),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              margin: EdgeInsets.all(8),
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: 110,
                              decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/cake.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10)
        ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: 110,
                              decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/cake.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10)
        ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 110,
                              decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/cake.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10)
        ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 110,
                              decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/cake.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10)
        ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.orangeAccent,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.greenAccent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}