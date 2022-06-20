import 'package:netflix_app/infrastructure/api_key.dart';
import '../../core/strings.dart';

class ApiEndPoints {
  static const downloads = "$kBaseUrl/trending/all/day?api_key=$apiKey";
static const search = "$kBaseUrl/search/movie?api_key=$apiKey";
}
