
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetPage extends StatefulWidget {
  const CupertinoActionSheetPage({Key? key}) : super(key: key);

  @override
  State<CupertinoActionSheetPage> createState() => _CupertinoActionSheetPageState();
}

class _CupertinoActionSheetPageState extends State<CupertinoActionSheetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            showCupertinoModalPopup<void>(
              context: context,
              builder: (BuildContext context) => CupertinoActionSheet(
                actions: <CupertinoActionSheetAction>[
                  CupertinoActionSheetAction(
                    child: const Text('Show on Explorer'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
                cancelButton: CupertinoActionSheetAction(
                  child: const Text("Cancel"),
                  onPressed: (){},
                ),
              ),
            );
          },
          child: Container(
            child: Text("Click me !", style: TextStyle(fontSize: 34, color: Colors.blue),),
          ),
        ),
      ),
    );
  }
}
