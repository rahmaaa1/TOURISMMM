import 'package:flutter/material.dart';
import 'package:flutter_project/screens/home_page.dart';
import 'package:flutter_project/screens/sign_up.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("images/photo_2024-04-18_04-44-40.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                "LET'S \nDISCOVER EGYPT",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'MadimiOne',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              width: 300,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: "email",
                  fillColor: Color.fromARGB(255, 167, 167, 167),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "password",
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.blue, width: 1),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(Homepage.screenRoute);
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(height: 10), // Add some vertical spacing
            Row(
              children: [
                SizedBox(width: 120), // Adjust the width as needed for spacing
                Container(
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(Signup.screenRoute);
                      },
                      child: Text(
                        "Sign up with Google!",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    width:
                        5), // Add some spacing between the text and the image
                Image.asset(
                  'assets/7123025_logo_google_g_icon.png', // Replace with your Google logo asset
                  width: 20, // Adjust the width as needed
                  height: 20, // Adjust the height as needed
                ),
              ],
            ),
            SizedBox(height: 100),
            Container(
              width: 250,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create account",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 7),
                  Text(
                    "|",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 7),
                  Text(
                    "Forget password",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//class Homepage extends StatelessWidget {
  //const Homepage({super.key});
  //static String id = 'homepage';

  //@override
  //Widget build(BuildContext context) {
    //return Scaffold(
     // appBar: AppBar(title: Text("Home Page")),
      //body: Center(
        //child: ElevatedButton(
          //onPressed: () {
            //Navigator.pop(context);
          //},
          //child: Text('Go Back'),
        //),
      //),
    //);
  //}
//}
