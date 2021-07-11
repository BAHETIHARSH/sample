import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home:Ninjacard(),
));

class Ninjacard extends StatefulWidget {

  @override
  _NinjacardState createState() => _NinjacardState();
}

class _NinjacardState extends State<Ninjacard> {
  int level = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Ninja ID"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/dp.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 100,
              color: Colors.grey,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Harsh Baheti',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Text(
              'Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              '$level',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10,),
                Text(
                    "HariBaheti@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                )
              ],
            )
          ],
        ),

      ),
    );
  }
}

