import 'package:flutter/material.dart';
import 'package:leetcode_api_dart/leetcode_api_client.dart';
import 'package:leetcode_api_dart/leetcode_api_dart.dart';


class LC extends StatefulWidget {
  const LC({super.key});

  @override
  State<LC> createState() => _LCState();
}

class _LCState extends State<LC> {
  final api = LeetcodeApiClient(session: "", csrfToken: "");

  Future<void> up() async {
    final res =  api.getUserSolveCountByDifficulty(username: '22BCE209').then((value)
    {
      print("#res: ${value}");
    }).onError((error, stackTrace) {
      print("#error $error");
      print(stackTrace);
    });
  }


  @override
  Widget build(BuildContext context) {
    up();
    return Scaffold(
      appBar: AppBar(title: Text("Leet code"),),

      body: Container(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
