import 'package:flutter/material.dart';
import '../constants.dart';
import '../generated/AppColor.dart';
import '../util/my_box.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Drawer(
              backgroundColor: Colors.white,
              elevation: 0,
              child: Column(
                children: [
                  DrawerHeader(
                    child: Padding(
                      padding: tilePadding,
                      child: ListTile(
                          title: Text(
                            'H E L P',
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.blue),
                          ),
                          onTap: () {
                            Fluttertoast.showToast(
                              msg: 'H E L P',
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding: tilePadding,
                    child: ListTile(
                        leading: Icon(
                          Icons.home,
                          color:
                              _selectedIndex == 0 ? Colors.red : Colors.black,
                        ),
                        title: Text(
                          'S U P P O R T  H O M E',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: _selectedIndex == 0
                                  ? Colors.red
                                  : Colors.black),
                        ),
                        onTap: () {
                          setState(() {
                            _selectedIndex = 0;
                          });
                          Fluttertoast.showToast(
                            msg: 'S U P P O R T  H O M E',
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                          );
                        }),
                  ),
                  Padding(
                    padding: tilePadding,
                    child: ListTile(
                        leading: Icon(
                          Icons.settings,
                          color:
                              _selectedIndex == 1 ? Colors.red : Colors.black,
                        ),
                        title: Text(
                          'F A Q S',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: _selectedIndex == 1
                                  ? Colors.red
                                  : Colors.black),
                        ),
                        onTap: () {
                          setState(() {
                            _selectedIndex = 1;
                          });
                          Fluttertoast.showToast(
                            msg: 'F A Q S',
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                          );
                        }),
                  ),
                  Padding(
                    padding: tilePadding,
                    child: ListTile(
                        leading: Icon(
                          Icons.info,
                          color:
                              _selectedIndex == 2 ? Colors.red : Colors.black,
                        ),
                        title: Text(
                          'N E W F E A T U R E S',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: _selectedIndex == 2
                                  ? Colors.red
                                  : Colors.black),
                        ),
                        onTap: () {
                          setState(() {
                            _selectedIndex = 2;
                          });
                          Fluttertoast.showToast(
                            msg: 'N E W F E A T U R E S',
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                          );
                        }),
                  ),
                  Padding(
                    padding: tilePadding,
                    child: ListTile(
                        leading: Icon(
                          Icons.details,
                          color:
                              _selectedIndex == 3 ? Colors.red : Colors.black,
                        ),
                        title: Text(
                          'T R A I N I N G',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: _selectedIndex == 3
                                  ? Colors.red
                                  : Colors.black),
                        ),
                        onTap: () {
                          setState(() {
                            _selectedIndex = 3;
                          });
                          Fluttertoast.showToast(
                            msg: 'T R A I N I N G',
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                          );
                        }),
                  ),
                  Padding(
                    padding: tilePadding,
                    child: ListTile(
                        leading: Icon(
                          Icons.logout,
                          color:
                              _selectedIndex == 4 ? Colors.red : Colors.black,
                        ),
                        title: Text(
                          'D E V E L O P E R S',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: _selectedIndex == 4
                                  ? Colors.red
                                  : Colors.black),
                        ),
                        onTap: () {
                          setState(() {
                            _selectedIndex = 4;
                          });
                          Fluttertoast.showToast(
                            msg: 'D E V E L O P E R S',
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                          );
                        }),
                  ),
                ],
              ),
            ),
            // first half of page
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30.0, right: 50.0, left: 50.0),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Search here...', // Your desired text
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 30.0),
                                    child: IconButton(
                                      alignment: Alignment.topCenter,
                                      padding: EdgeInsets.all(6.0),
                                      color: Colors.black,
                                      icon: Icon(Icons.search),
                                      iconSize: 30,
                                      onPressed: () {
                                        Fluttertoast.showToast(
                                          msg: 'Search Click',
                                          toastLength: Toast.LENGTH_LONG,
                                          gravity: ToastGravity.BOTTOM,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 3,
                          child: SizedBox(
                            width: double.infinity,
                            child: GridView.builder(
                              itemCount: 3,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3),
                              itemBuilder: (context, index) {
                                return MyBox();
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 30.0, left: 20.0, right: 20.0),
                          child: Text(
                            'GETTING STARTED',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: AppColor.blackColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, right: 20.0, left: 20.0),
                          child: Container(
                              height: 78,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColor.whiteColor),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "Configure Help For GDPR Compliace",
                                        style: TextStyle(
                                            color: AppColor.deepPurple),
                                      ),
                                    )
                                  ])),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 30.0, left: 20.0, right: 20.0),
                          child: Text(
                            'GETTING STARTED',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: AppColor.blackColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, right: 20.0, left: 20.0),
                          child: Container(
                              height: 78,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColor.whiteColor),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "Configure Help For GDPR Compliace",
                                        style: TextStyle(
                                            color: AppColor.deepPurple),
                                      ),
                                    )
                                  ])),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 30.0, left: 20.0, right: 20.0),
                          child: Text(
                            'GETTING STARTED',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: AppColor.blackColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, right: 20.0, left: 20.0),
                          child: Container(
                              height: 78,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColor.whiteColor),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "Configure Help For GDPR Compliace",
                                        style: TextStyle(
                                            color: AppColor.deepPurple),
                                      ),
                                    )
                                  ])),
                        )
                      ]);
                  //const MyTile();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
