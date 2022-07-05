import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(fontFamily: 'Euclid'),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFBFC),
        iconTheme:
            IconThemeData(color: Colors.black.withOpacity(0.7), size: 25),
        title: const Text("Custom Sidebar"),
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontSize: 20,
            fontFamily: 'Euclid'),
      ),
      drawer: ClipRRect(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(5), bottomRight: Radius.circular(5)),
        child: Drawer(
          backgroundColor: const Color(0xFFFAFBFC),
          width: 260,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 280,
                child: DrawerHeader(
                    padding: EdgeInsets.zero,
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 20),
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.3),
                                    width: 1),
                                borderRadius: BorderRadius.circular(100)),
                            child: Image.asset('assets/images/avatar.png')),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Sultan',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 1.0),
                          child: Text(
                            'AI Engineer',
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 13),
                          ),
                        )
                      ],
                    )),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 1, color: Colors.grey.withOpacity(0.2)))),
                child: SizedBox(
                  height: 189,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50, top: 30),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.shortcut,
                              color: Colors.blue,
                              size: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                'Requests',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black.withOpacity(0.8)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.chat,
                              color: Colors.orange,
                              size: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                'Reviews',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black.withOpacity(0.8)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.payments,
                              color: Colors.grey,
                              size: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                'Payments',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black.withOpacity(0.8)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 1, color: Colors.grey.withOpacity(0.2)))),
                child: SizedBox(
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50, top: 30),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.settings,
                              color: Colors.black.withOpacity(0.6),
                              size: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                'Settings',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 1, color: Colors.grey.withOpacity(0.2)))),
                child: SizedBox(
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50, top: 30),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.logout,
                              color: Colors.black.withOpacity(0.6),
                              size: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                'Logout',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
