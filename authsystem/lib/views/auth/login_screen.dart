import 'package:authsystem/controllers/all_in_controller.dart';
import 'package:authsystem/views/auth/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey1 = GlobalKey();
  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey1,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              children: [
                ClipOval(
                  child: Image.asset(
                    'images/login1.jpg',
                    fit: BoxFit.contain,
                    height: 400,
                    width: 400,
                  ),
                ),
                TextFormField(
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  controller: mobile,
                  decoration: InputDecoration(
                    hintText: "Mobile Number",
                    hintStyle: const TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.indigoAccent),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.indigoAccent),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                  ),
                  validator: (value1) {
                    if (value1 == null || value1.isEmpty) {
                      return "Please enter your mobile number";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  obscureText: true,
                  obscuringCharacter: ".",
                  controller: password,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: const TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.indigoAccent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.indigoAccent),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                  ),
                  validator: (value2) {
                    if (value2 == null || value2.isEmpty) {
                      return "Please enter your Password";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 60,
                  width: 250,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.indigo,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      
                      if (formKey1.currentState!.validate()) {
                        print("validated");
                        Map userlogininfo = {
                          'loginnumber': mobile.text,
                          'loginpassword': password.text,
                        };
                        AllInController.login(userlogininfo, context);
                        print("$userlogininfo");
                      } else {
                        print("Not validated");
                      }
                    },
                    child: const Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account ",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                                             
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Signup",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.indigo,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
