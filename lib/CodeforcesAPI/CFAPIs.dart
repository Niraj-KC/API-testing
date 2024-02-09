import 'package:api_testing/CodeforcesAPI/CodeForcesURLs.dart';
import 'package:http/http.dart' as http;

/// for Parsing response body
/// *
class CFAPIs{

  static Future<void> getUserProfile(String username) async {
    String genURI = CodeForcesURLs.userProfile(username: username);
    print("genURI=${genURI}");

    final genRes = await http.get(
      Uri.parse(genURI),
    );

    print("genRes=${genRes.body}");
  }

  static Future<void> fetchData(String uri) async{
    print("url: $uri");

    final genRes = await http.get(
      Uri.parse(uri),
    );

    print("genRes=${genRes.body}");
  }

  static Future<void> temp()async{
    print("===========================");

    var url1 = Uri.https(
        "www.codeforces.com", "/api/user.info?handles=Psychotic_D");

    var res = await http.get(url1);

    print("res = $res");
  }
}