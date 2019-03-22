import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  final Widget child;
  LoginScreen({Key key, this.child}) : super(key: key);
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  GlobalKey orWidget = GlobalKey();
  final marginContent = 48.0;
  final marginContentOr = 96.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, viewPort) {
        return SingleChildScrollView(
          child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: viewPort.maxHeight),
              child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: SingleChildScrollView(
                    child: loginContent(),
                  ))),
        );
      },
    );
  }

  void login() {
    print("Press Button Login");
  }

  Widget loginContent() {
    return Container(
      margin: EdgeInsets.all(32),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 72, bottom: 32),
            alignment: Alignment.center,
            child: SizedBox(
              child: Image.asset('assets/images/logo.png'),
              height: 64,
              width: 112,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 32),
            alignment: Alignment.center,
            child: Text("APP NAME", style: TextStyle(color: Color(0xffd51a1a), fontSize: 24),),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16, bottom: 16),
            child: TextFormField(
              controller: emailController,
              textInputAction: TextInputAction.next,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.black45),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black54,
                    style: BorderStyle.solid,
                  )),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black54,
                    style: BorderStyle.solid,
                  ))),
              onSaved: (String value) {
                print("Simpan Inputan Text : $value");
              },
              onFieldSubmitted: (value) {},
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16, bottom: 16),
            child: TextFormField(
              controller: passController,
              textInputAction: TextInputAction.next,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.black45),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black54,
                    style: BorderStyle.solid,
                  )),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black54,
                    style: BorderStyle.solid,
                  ))),
              onSaved: (String value) {
                print("Simpan Inputan Text : $value");
              },
              onFieldSubmitted: (value) {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: SizedBox(
                height: 49,
                child: RaisedButton(
                  child:
                      Text('Log in'.toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  color: Color(0xffd51a1a),
                  onPressed: () {
                    login();
                  },
                ),
              )),
          SizedBox(
            height: 8.0,
          ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: (){
                print("Forgot your password telah di tap");
              },
              child: Text("Forgot your password?"),
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an account? "),
                GestureDetector(
                  onTap: (){
                    print("Tap signup");
                  },
                  child: Text("Sing up", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
