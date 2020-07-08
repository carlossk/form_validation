import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[_createBackground(), _loginForm()],
    ));
  }

  _createBackground() {
    final size = MediaQuery.of(context).size;
    final background = Container(
      height: size.height * .4,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(63, 63, 156, 1),
        Color.fromRGBO(90, 70, 178, 1),
      ])),
    );

    final circle = Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromRGBO(255, 255, 255, .05)),
    );

    return Stack(
      children: <Widget>[
        background,
        Positioned(
          child: circle,
          top: 90,
          left: 30,
        ),
        Positioned(
          child: circle,
          top: -40,
          left: -30,
        ),
        Positioned(
          child: circle,
          bottom: -50,
          right: -10,
        ),
        Positioned(
          child: circle,
          bottom: 120,
          right: -10,
        ),
        Positioned(
          child: circle,
          bottom: -50,
          left: -20,
        ),
        Container(
          padding: EdgeInsets.only(top: 80),
          child: Column(
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                color: Colors.white,
                size: 100,
              ),
              SizedBox(
                height: 10,
                width: double.infinity,
              ),
              Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 25),
              )
            ],
          ),
        )
      ],
    );
  }

  _loginForm() {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
              child: Container(
            height: 180,
          )),
          Container(
            width: size.width * .85,
            margin: EdgeInsets.symmetric(vertical: 30),
            padding: EdgeInsets.symmetric(vertical: 50),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 3,
                      offset: Offset(0, 5),
                      spreadRadius: 3)
                ]),
            child: Column(
              children: <Widget>[
                Text(
                  'Ingreso',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 60,
                ),
                _createEmail(),
                SizedBox(
                  height: 30,
                ),
                _createPassword(),
                SizedBox(
                  height: 30,
                ),
                _createButton()
              ],
            ),
          ),
        Text('¿Olvido la contraseña?'),
        SizedBox(height: 100,)
        ],
      ),
    );
  }

  _createEmail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'ejemplo@ejemplo.com',
            labelText: 'Correo electronico:',
            icon: Icon(
              Icons.alternate_email,
              color: Colors.deepPurple,
            )),
      ),
    );
  }

  _createPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: 'Contraseña:',
            icon: Icon(
              Icons.lock_outline,
              color: Colors.deepPurple,
            )),
      ),
    );
  }

  _createButton() {
    return RaisedButton(
      onPressed: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15 ),
        child: Text('Ingresar'),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
      ),
      elevation: 0,
      color: Colors.deepPurple,
      textColor: Colors.white,
    );
  }
}
