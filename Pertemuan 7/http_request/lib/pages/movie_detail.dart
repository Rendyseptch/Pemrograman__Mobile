

import 'package:flutter/material.dart';
import 'package:http_request/models/movie.dart';

class MovieDetail extends StatelessWidget{
  late final Movie movie;
  final String imgPath='https://image.tmbd.org/t/p/w500/';
  
  MovieDetail(this.movie);
  
  get overview => null;
  
  get title => null;
  
  @override
  Widget build(BuildContext context) {
    String path;
    if(movie.posterPath !=null){
      path=imgPath + movie.posterPath!;

    }else{
      path='https://images.freeimages.com/images/large-previews/5rb/movie-clapboard-1184339.jpg';
    }
    double height= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title!),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                height: height/1.5,
                child: Image.network(path)),
              Container(
                child: Text(movie.overview!),
                padding: EdgeInsets.only(left:16, right: 16),
              ),
            ],
          ),
        ),
      ),
    );
}
}