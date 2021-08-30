import 'package:d_mount/views/models/alat_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

abstract class AlatRepo{
  Future<List<AlatMendaki>> getAlatList();
}

class AlatServices implements AlatRepo{
  
  static const _baseUrl = '61224bfdd980b40017e09206.mockapi.io';
  static const String _GET_ALATS = '/alat_mendaki';
  
  @override
  Future<List<AlatMendaki>> getAlatList() async {
    Uri uri = Uri.https(_baseUrl, _GET_ALATS);
    Response response = await http.get(uri);
    List<AlatMendaki> alats = alatMendakiFromJson(response.body);
    return alats;
  }
  
}