import 'package:flutter/material.dart';
import 'package:neopop/widgets/buttons/neopop_tilted_button/neopop_tilted_button.dart';
import 'Bottombar.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 80,
            width: 450,
            padding: const EdgeInsets.only(right: 100, left: 30, top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                Text(
                  "Configure Your Account",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Center(
              child: Image.asset(
                'assets/images/img2.png',
                scale: 15,
              ),
            ),
          ),
          Container(
            height: 500,
            width: 450,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(80)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 20, left: 10),
                    alignment: Alignment.center,
                    height: 60,
                    width: 300,
                    child: const Text(
                        "Provide the small email and password used"
                        " for creating your Ajax account",
                        style: TextStyle(fontSize: 16))),
                Container(
                  height: 70,
                  width: 300,
                  margin: const EdgeInsets.only(top: 30),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      hintText: "E-mail id",
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 300,
                  margin: const EdgeInsets.only(top: 5),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      hintText: "Password",
                    ),
                  ),
                ),
                InkWell(
                  // onTap: () => ,
                  child: Container(
                    margin: EdgeInsets.only(top: 50),
                    child: NeoPopTiltedButton(
                      isFloating: true,
                      onTapUp: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => const Bottomnavbar()));
                        });
                      },
                      decoration: const NeoPopTiltedButtonDecoration(
                        color: Color.fromRGBO(0, 0, 1, 1.0),
                        plunkColor: Color.fromRGBO(0, 0, 1, 1.0),
                        shadowColor: Color.fromRGBO(65, 65, 65, 1.0),
                        showShimmer: true,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 70.0,
                          vertical: 15,
                        ),
                        child: Text(
                          'Authorize',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 70, top: 20),
                  child: Row(
                    children: const [
                      Text(
                        "Didn't have an account ?",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 15),
                      ),
                      Text(
                        "Create Account",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 15),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
