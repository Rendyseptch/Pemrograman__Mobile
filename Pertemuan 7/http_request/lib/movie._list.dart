import 'package:flutter/material.dart';
import 'package:http_request/service/http_service.dart';

class MovieList extends StatefulWidget{
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  int movieCount = 0;
  List movies = [];
  HttpService? service ;
  String result = "";
  
  Future initialize() async {
    movies = [];
    movies = (await service?.getPopularMovies()) as List;
    setState(() {
      movieCount = movies.length;
      movies = movies;
    });
  }

  @override
  void initState() {
    service = HttpService();
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popular Movies"),
      ),
      body: ListView.builder(
        itemCount: (this.movieCount == null) ? 0 : movieCount,
        itemBuilder: (context, int position) {
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child : ListTile(
              // leading: Image.network(movies[position].posterPath),
              title: Text(movies[position].title),
              subtitle: Text(
                'Rating = ' + movies[position].voteAverage.toString(),
              ),
            ),
          );
        },
      ),
    );
  }
}