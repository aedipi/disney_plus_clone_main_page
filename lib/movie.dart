import 'package:flutter/material.dart';

class Movie {
  int movieId;
  String movieName;
  String moviePictureName;
  String? movieEpisode;
  int movieDuration;
  int movieLeftDuratin;

  Movie({required this.movieId,required this.movieName,this.movieEpisode,required this.moviePictureName,required this.movieDuration,required this.movieLeftDuratin});
}