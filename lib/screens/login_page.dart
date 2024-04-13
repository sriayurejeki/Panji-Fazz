import 'package:flutter/material.dart';
import 'package:my_app/components/asset_image_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromRGBO(4, 73, 153, 1),
            Color.fromRGBO(4, 73, 153, 1),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _buildPage(), 
      ),
    );
  }

  Widget _buildPage() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/new_blue.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            _buildInputField("Username", usernameController),
            const SizedBox(height: 20),
            _buildInputField("Password", passwordController, isPassword: true),
            const SizedBox(height: 50),
            _buildLoginBtn(),
            const SizedBox(height: 20),
            _buildExtraText(),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(String hintText, TextEditingController controller,
      {bool isPassword = false}) {
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(color: Colors.white),
    );

    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: border,
        focusedBorder: border,
        prefixIcon:
            hintText == "Username" ? Icon(Icons.person, color: Colors.white) : null,
        suffixIcon: hintText == "Password"
            ? Icon(Icons.visibility, color: Colors.white)
            : null,
      ),
      obscureText: isPassword,
    );
  }

  Widget _buildLoginBtn() {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/my_homepage');
      },
      child: const SizedBox(
        width: double.infinity,
        child: Text(
          "Log In ",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color.fromRGBO(4, 73, 153, 1),
        backgroundColor: Colors.white,
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }

  Widget _buildExtraText() {
    return const Text(
      "Forgot Password?",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, color: Colors.white),
    );
  }
}
