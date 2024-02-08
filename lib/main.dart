import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var emailControlle = TextEditingController();
  var pwdilControlle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(30),
        //crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Image.asset(
            'assets/Screenshot.png',
            height: 72,
            width: 773,
          ),
          const SizedBox(height: 122),
          const Text(
            "Welcome back",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          TextFormField(
            controller: emailControlle,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.mail,
                color: Colors.black,
              ),
              hintText: "Email/phone number",
            ),
          ),
          TextFormField(
            controller: pwdilControlle,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.black,
              ),
              hintText: "password",
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (v) {},
              ),
              const Text(
                "Remeber me ",
                style: TextStyle(color: Colors.pink),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forget Password ?",
                    style: TextStyle(color: Colors.pink),
                  )),
            ],
          ),
          const SizedBox(
            height: 64,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
            child: const Text("Login"),
          ),
          const SizedBox(height: 33),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "or Login with",
            ),
          ),
          const SizedBox(height: 21),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/fb.png',
                height: 39,
              ),
              SizedBox(width:20),
              Image.asset(
                'assets/ins.png',
                height: 38,
              ),SizedBox(width:20),
              Image.asset(
                'assets/link.png',
                height: 39,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?"),
              TextButton(
                onPressed: () {}, // Implement sign up logic
                child:
                    const Text("Sign up", style: TextStyle(color: Colors.pink)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}