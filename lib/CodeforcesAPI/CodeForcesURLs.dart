import 'CFAuth.dart';
import 'package:http/http.dart' as http;

class CodeForcesURLs{
  static const String _secret = "afd599af88bfa4b0e0904ae46b0b60a9b6641a17";
  static const String _key = "bc134d6e4bdccde5a784b15d3eccf74ac254a6a4";

  static CFAuth _cfAuth = CFAuth(options: {"key": _key,"secret": _secret});


  static String getUserProfileURL({required String username}){
    return _cfAuth.genURL("https://codeforces.com/api/user.info?handles=${username.toString()}");
  }

  static String getContestURL({required int id, bool asManger=true, int from=1, int count=20, bool showUnofficial=false}){
    return _cfAuth.genURL("https://codeforces.com/api/contest.standings?contestId=${id.toString()}&asManager=${asManger.toString()}&from=${from.toString()}&count=${count.toString()}&showUnofficial=${showUnofficial.toString()}");
  }

  static String getContestList(){
    return _cfAuth.genURL("https://codeforces.com/api/contest.list?gym=false");
  }
}

void main () async {
  String uri = CodeForcesURLs.getContestURL(id: 499642);
  // String uri = CodeForcesURLs.getContestList();

  http.Response res = await http.get(Uri.parse(uri));
  
  print("res-status: ${res.statusCode}");
  print("res: ${res.body}");

  
}