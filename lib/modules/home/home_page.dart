import 'package:flutter/material.dart';
import 'package:petcare_project/style/custom_text.dart';
import 'package:petcare_project/widgets/app-bar/custom_appbart.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar("Home"),
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          custom_text("My Dogs 2"),
          Padding(
            padding: EdgeInsets.all(30  ),
            child: Container(
              height: 300,
              child: PageView(
                children: <Widget> [
                  _imgNetwork("https://i0.statig.com.br/bancodeimagens/5e/3s/bf/5e3sbfxvrwda8ptw8z182rmla.jpg"),
                  _imgNetwork("https://love.doghero.com.br/wp-content/uploads/2016/11/Schnauzer-2.webp"),
                ]
              )
            )
          )
        ],
      ),
    );
  }

  _imgNetwork(String path) {
    return Image.network(
      path,
      fit: BoxFit.cover,
    );
  }
}
