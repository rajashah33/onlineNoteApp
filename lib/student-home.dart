import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StudentHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student"),
      ),
      drawer: Drawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Card(
            //   child: Container(
            //     padding: EdgeInsets.all(12),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Container(
            //           child: Text(
            //             'Upload a new file',
            //             style: TextStyle(
            //                 fontSize: 20, fontWeight: FontWeight.bold),
            //           ),
            //         ),
            //         Row(
            //           mainAxisSize: MainAxisSize.max,
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             RaisedButton(
            //               onPressed: () {},
            //               child: Text('select file ..'),
            //             ),
            //             RaisedButton(
            //               onPressed: () {},
            //               child: Text('upload'),
            //               color: Colors.green,
            //             ),
            //           ],
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            Expanded(
              child: ListView(
                children: [
                  for (var i = 0; i < 15; i++)
                    Card(
                      child: ListTile(
                        leading: Container(
                          child: Icon(Icons.file_present),
                          width: 50,
                          height: 50,
                        ),
                        title: Text('File $i'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.download_rounded),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
