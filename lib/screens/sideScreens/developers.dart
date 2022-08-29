import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../widgets/drawer.dart';

class Developer extends StatelessWidget {
  const Developer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// SideMenu Drawer
      drawer: const SideMenuDrawer(),

      /// Display app name('ELECT')
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: HexColor('#732424'),
        title: const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'ELECT',
          ),
        ),
      ),

      /// Stack to position widgets
      body: Stack(
        children: [
          /// Display page name(Developers)
          Positioned(
            top: 0,
            bottom: 600,
            right: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              height: 50,
              color: HexColor('#732424'),
              child: const Text(
                "DEVELOPERS 💻",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          /// List of all Developers
          Positioned(
            top: 200,
            bottom: 0,
            right: 1,
            left: 1,

            /// List of all Developers
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// Developer Image
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 2,
                          shadowColor: Colors.white38,
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Image(
                              image: AssetImage('assets/ok.jpg'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),

                      /// Profile Information
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Kenneth Yaw Obeng'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text('Index Number: 4236820'),
                            ),
                            Text('Github: @yawok'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// Developer Image
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 2,
                          shadowColor: Colors.white38,
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Image(
                              image: AssetImage('assets/m.jpg'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),

                      /// Developer Information
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Mahamadu Halic'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text('Index Number: 4216320'),
                            ),
                            Text('Github:@Mahamudu-Halic'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// Developer Image
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 2,
                          shadowColor: Colors.white38,
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Image(
                              image: AssetImage('assets/fg.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),

                      /// Profile Information
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Samuel  Awuetey'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text('Index Number: 4199920'),
                            ),
                            Text('Github: @'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// Developer Image
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 2,
                          shadowColor: Colors.white38,
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Image(
                              image: AssetImage('assets/fg.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),

                      /// Profile Information
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Boateng Mireku Gerrard'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text('Index Number: 42003820'),
                            ),
                            Text('Github: @'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// Profile Image
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 2,
                          shadowColor: Colors.white38,
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Image(
                              image: AssetImage('assets/fg.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),

                      /// Profile Content
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Micah Nii Tagoe'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text('Index Number: 4229220'),
                            ),
                            Text('Github: @'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// Profile Image
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 2,
                          shadowColor: Colors.white38,
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Image(
                              image: AssetImage('assets/fg.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),

                      /// Profile Content
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Maalug Johnathan'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text('Index Number: 4216120'),
                            ),
                            Text('Github: @'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// Profile Image
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 2,
                          shadowColor: Colors.white38,
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Image(
                              image: AssetImage('assets/fg.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),

                      /// Profile Content
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Adu Charles Jnr'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text('Index Number: 4186920'),
                            ),
                            Text('Github: @'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// Profile Image
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 2,
                          shadowColor: Colors.white38,
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Image(
                              image: AssetImage('assets/fg.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),

                      /// Profile Content
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Coffie Eryksen'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text('Index Number: 5310920'),
                            ),
                            Text('Github: @'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// Profile Image
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 2,
                          shadowColor: Colors.white38,
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Image(
                              image: AssetImage('assets/fg.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),

                      /// Profile Content
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Jennifer Teiko-Essumeng'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text('Index Number: 4208920'),
                            ),
                            Text('Github: @'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// Profile Image
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 2,
                          shadowColor: Colors.white38,
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Image(
                              image: AssetImage('assets/fg.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),

                      /// Profile Content
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Joshua Adu-Acheampong'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text('Index Number: 4187420'),
                            ),
                            Text('Github: @'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// Profile Image
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 2,
                          shadowColor: Colors.white38,
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Image(
                              image: AssetImage('assets/fg.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),

                      /// Profile Content
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Ernest Baffour Asare'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text('Index Number: 4233720'),
                            ),
                            Text('Github: @'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// Profile Image
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 2,
                          shadowColor: Colors.white38,
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Image(
                              image: AssetImage('assets/fg.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),

                      /// Profile Content
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('George Sackey-Robertson'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text('Index Number: 4227120'),
                            ),
                            Text('Github: @'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// Profile Image
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 2,
                          shadowColor: Colors.white38,
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Image(
                              image: AssetImage('assets/fg.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),

                      /// Profile Content
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Gideon Owuraku-Sarpong'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text('Index Number: 4227920'),
                            ),
                            Text('Github: @'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// Profile Image
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 2,
                          shadowColor: Colors.white38,
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Image(
                              image: AssetImage('assets/fg.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),

                      /// Profile Content
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Daniel Opoku Boateng'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text('Index Number: 4222220'),
                            ),
                            Text('Github: @'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// Profile Image
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 2,
                          shadowColor: Colors.white38,
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Image(
                              image: AssetImage('assets/fg.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),

                      /// Profile Content
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Emmanuella Joy A. D.'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text('Index Number: 4207020'),
                            ),
                            Text('Github: @'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// Profile Image
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 2,
                          shadowColor: Colors.white38,
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Image(
                              image: AssetImage('assets/fg.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),

                      /// Profile Content
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Ankrah Jerome'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text('Index Number: 4194420'),
                            ),
                            Text('Github: @winfred56'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// Profile Image
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 2,
                          shadowColor: Colors.white38,
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Image(
                              image: AssetImage('assets/fg.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),

                      /// Profile Content
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Winfred Adu-Acheampong'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text('Index Number: 5310020'),
                            ),
                            Text('Github: @winfred56'),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
