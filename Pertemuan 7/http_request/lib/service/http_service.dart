import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http_request/models/movie.dart';


class HttpService {
  final String apiKey = 'd9e43a99c296288b877a8b5d569898f0';
  final String baseUrl = 'https://api.themoviedb.org/3/movie/popular?api_key=';

 Future<List> getPopularMovies() async {
    final String uri = baseUrl + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("Sukses");
      final jsonResponse = jsonDecode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map((i) => Movie.fromJson(i)).toList();
      return movies;
    } else {
      print("Fail");
      List movie = [];
      return movie;
    }
  }

}