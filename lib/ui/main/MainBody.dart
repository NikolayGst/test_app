import 'package:flutter/material.dart';
import 'package:test_app/ui/utils/RandomUtils.dart' as random;

class MainBody extends StatefulWidget {
  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  Color color = Colors.grey.shade200;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => handleClick(),
      child: Container(
        color: color,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(child: CircleAvatar(
                    backgroundImage: NetworkImage("https://scontent-arn2-1.cdninstagram.com/vp/1ed6cc6425ed8c8512439b13e935bb76/5D6BF9CC/t51.2885-15/e35/47582215_282042015778589_1171009791633720836_n.jpg?_nc_ht=scontent-arn2-1.cdninstagram.com"),
                    radius: 80.0),
                padding: EdgeInsets.all(32)),
            Container(
                child: Text("Nikolay Gustilin", style: TextStyle(fontSize: 25.0, color: Colors.black)),
                margin: EdgeInsets.only(bottom: 8)),
            Text("Android Developer", style: TextStyle(fontSize: 18.0, color: Colors.grey.shade600)),
            Container(
                child: Text("Hey there", style: TextStyle(fontSize: 30.0, color: Colors.grey.shade900)),
                margin: EdgeInsets.all(16)),
          ],
        ),
      ),
    );
  }



  ///Обрабатываем нажатие по контейнеру
  handleClick() {
    setState(() {
      color = Color.fromARGB(255, random.next(0, 255), random.next(0, 255), random.next(0, 255));
    });
  }

}
