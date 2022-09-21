import 'package:http/http.dart' as http;

fetchdata(String url)async{
  http.Response reponse = await http.get(Uri.parse(url));
  return reponse.body;
}