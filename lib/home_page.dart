import 'package:carousel_slider/carousel_slider.dart';
import 'package:disney_plus_clone_main_page/movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future<List<Movie>> getMovies() async {
    var movieList = <Movie>[];
    var f1 = Movie(movieId: 1, movieName: "Anadoluda", moviePictureName: "anadoluda.png",movieDuration: 130,movieLeftDuratin: 29,);
    var f2 = Movie(movieId: 2, movieName: "Django", moviePictureName: "django.png",movieDuration: 130,movieLeftDuratin: 29,);
    var f3 = Movie(movieId: 3, movieName: "Inception", moviePictureName: "inception.png",movieDuration: 130,movieLeftDuratin: 29,);
    var f4 = Movie(movieId: 4, movieName: "Interstellar", moviePictureName: "interstellar.png",movieDuration: 130,movieLeftDuratin: 29,);
    var f5 = Movie(movieId: 5, movieName: "The Hateful Eight", moviePictureName: "thehatefuleight.png",movieDuration: 130,movieLeftDuratin: 29,);
    var f6 = Movie(movieId: 6, movieName: "The Pianist", moviePictureName: "thepianist.png",movieDuration: 130,movieLeftDuratin: 29);

    movieList.add(f1);
    movieList.add(f2);
    movieList.add(f3);
    movieList.add(f4);
    movieList.add(f5);
    movieList.add(f6);

    return movieList;
  }
  Future<List<Movie>> getMoviesJustDisneyPlus() async {
    var movieList = <Movie>[];
    var f1 = Movie(movieId: 1, movieName: "Only Murders in the Building", moviePictureName: "onlymurdersinthebuilding.jpg",movieDuration: 130,movieLeftDuratin: 29,);
    var f2 = Movie(movieId: 2, movieName: "Biomes", moviePictureName: "biomes.jpg",movieDuration: 130,movieLeftDuratin: 29,);
    var f3 = Movie(movieId: 3, movieName: "War of the Worlds", moviePictureName: "waroftheworlds.jpg",movieDuration: 130,movieLeftDuratin: 29,);
    var f4 = Movie(movieId: 4, movieName: "The Walking Dead ", moviePictureName: "thewalkingdead.jpg",movieDuration: 130,movieLeftDuratin: 29,);
    var f5 = Movie(movieId: 5, movieName: "She Hulk", moviePictureName: "shehulk2.jpg",movieDuration: 130,movieLeftDuratin: 29,);
    var f6 = Movie(movieId: 6, movieName: "Shang Chi", moviePictureName: "shangchi.png",movieDuration: 130,movieLeftDuratin: 29);
    var f7 = Movie(movieId: 7, movieName: "Yeni Mutantlar", moviePictureName: "yenimutantlar.jpg",movieDuration: 130,movieLeftDuratin: 29,);

    movieList.add(f1);
    movieList.add(f2);
    movieList.add(f3);
    movieList.add(f4);
    movieList.add(f5);
    movieList.add(f6);
    movieList.add(f7);

    return movieList;
  }
  Future<List<Movie>> getMovieKeepWatching() async {
    var movieList = <Movie>[];
    var f1 = Movie(movieId: 1, movieName: "What If...?",movieEpisode: "S1:B2 Ya... T'Challa Bir Yıldız Lordu Olsaydı?", moviePictureName: "whatif.jpg",movieDuration: 40,movieLeftDuratin: 36,);
    var f2 = Movie(movieId: 2, movieName: "She-Hulk: Attorney At Law",movieEpisode: "S1:B2 Süperinsan Hukuku" ,moviePictureName: "shehulk.jpg",movieDuration: 60,movieLeftDuratin: 29,);
    var f3 = Movie(movieId: 3, movieName: "Modern Family",movieEpisode: "S1:B1 Pilot Bölüm", moviePictureName: "modernfamily.jpg",movieDuration: 23,movieLeftDuratin: 21,);

    movieList.add(f1);
    movieList.add(f2);
    movieList.add(f3);

    return movieList;
  }
  Future<List<Movie>> getMoviesForYou() async {
    var movieList = <Movie>[];
    var f1 = Movie(movieId: 1, movieName: "Avenger End Game", moviePictureName: "endgame.png",movieDuration: 130,movieLeftDuratin: 29,);
    var f2 = Movie(movieId: 2, movieName: "Eternals", moviePictureName: "eternals.jpg",movieDuration: 130,movieLeftDuratin: 29,);
    var f3 = Movie(movieId: 3, movieName: "She Hulk", moviePictureName: "shehulk2.jpg",movieDuration: 130,movieLeftDuratin: 29,);
    var f4 = Movie(movieId: 4, movieName: "Shang Chi", moviePictureName: "shangchi.png",movieDuration: 130,movieLeftDuratin: 29,);

    movieList.add(f1);
    movieList.add(f2);
    movieList.add(f3);
    movieList.add(f4);

    return movieList;
  }

  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: disneyBackColor,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height/25,),
                SizedBox(height: 50,
                    child: SvgPicture.asset("logos/disney_plus_logo.svg"),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height*0.24,
                    viewportFraction: 0.85,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [1,2,3,4,5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width*0.9,
                            child: Image.asset("pictures/picture_$i.png",fit: BoxFit.fill,),
                        );
                      },
                    );
                  }).toList(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder( //<-- SEE HERE
                            side: BorderSide(
                              color: disneyButtonBorderColor,
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        color: disneyButtonBackColor,
                        child: SizedBox(
                            width: 60,
                            height: 60,
                            child: Image.asset("logos/disney_logo.png",fit: BoxFit.fill,),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder( //<-- SEE HERE
                          side: BorderSide(
                            color: disneyButtonBorderColor,
                          ),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        color: disneyButtonBackColor,
                        child: SizedBox(
                            width: 60,
                            height: 60,
                            child: Image.asset("logos/pixar_logo.png",fit: BoxFit.fill,),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder( //<-- SEE HERE
                            side: BorderSide(
                              color: disneyButtonBorderColor,
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        color: disneyButtonBackColor,
                        child: SizedBox(
                            width: 60,
                            height: 60,
                            child: Image.asset("logos/marvel_logo.png",fit: BoxFit.fill,),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder( //<-- SEE HERE
                            side: BorderSide(
                              color: disneyButtonBorderColor,
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        color: disneyButtonBackColor,
                        child: SizedBox(
                            width: 60,
                            height: 60,
                            child: Image.asset("logos/starwars_logo.png",fit: BoxFit.fill,),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder( //<-- SEE HERE
                            side: BorderSide(
                              color: disneyButtonBorderColor,
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        elevation: 10,
                        color: disneyButtonBackColor,
                        child: SizedBox(
                            width: 60,
                            height: 60,
                            child: Image.asset("logos/natgeo_logo.png",fit: BoxFit.fill,),
                        ),
                      ),
                    ],
                  ),
                ),

                //<Disney+'ta Yeni>
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0,top: 12,bottom: 10),
                      child: Text("Disney+'ta Yeni",style: TextStyle(color: Colors.white),),
                    ),
                    FutureBuilder<List<Movie>>(
                      future: getMoviesJustDisneyPlus(),
                      builder: (context,snapshot){
                        if (snapshot.hasData){
                          var movieList = snapshot.data;
                          return SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height*0.18,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: movieList!.length,
                              itemBuilder: (context,index){
                                var movie = movieList[index];
                                return GestureDetector(
                                    onTap: (){
                                      //Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailPage(movie: movie)));
                                    },
                                    child : Container(
                                      padding: const EdgeInsets.all(0.5), // Border width
                                      decoration: BoxDecoration(color: disneyButtonBorderColor, borderRadius: BorderRadius.circular(5)),
                                      margin: const EdgeInsets.only(left: 12),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5), // Image border
                                        child: Image.asset("pictures/${movie.moviePictureName}"),
                                      ),
                                    )

                                );
                              },
                            ),
                          );
                        }else{
                          return const Center();
                        }
                      },
                    ),

                  ],
                ),
                //</Disney+'ta Yeni>

                //<Daha Fazla Eğlence>
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0,top: 16,bottom: 10),
                      child: Text("Daha Fazla Eğlence",style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0,right: 12.0,bottom: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*0.25,
                        child:Image.asset("pictures/morefun.png",fit: BoxFit.fill,),
                      ),
                    ),

                  ],
                ),
                //</Daha Fazla Eğlence>

                //<Sana Özel Öneriler>
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0,top: 20,bottom: 10),
                      child: Text("Sana Özel Öneriler",style: TextStyle(color: Colors.white),),
                    ),
                    FutureBuilder<List<Movie>>(
                      future: getMoviesForYou(),
                      builder: (context,snapshot){
                        if (snapshot.hasData){
                          var filmlerListesi = snapshot.data;
                          return SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height*0.18,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: filmlerListesi!.length,
                              itemBuilder: (context,index){
                                var film = filmlerListesi[index];
                                return GestureDetector(
                                    onTap: (){
                                      //Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailPage(movie: movie)));
                                    },
                                    child : Container(
                                      padding: const EdgeInsets.all(0.5), // Border width
                                      decoration: BoxDecoration(color: disneyButtonBorderColor, borderRadius: BorderRadius.circular(5)),
                                      margin: const EdgeInsets.only(left: 12),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5), // Image border
                                        child: Image.asset("pictures/${film.moviePictureName}"),
                                      ),
                                    ),

                                );
                              },
                            ),
                          );
                        }else{
                          return const Center();
                        }
                      },
                    ),
                  ],
                ),
                //</Sana Özel Öneriler>

                //<İzlemeye Devam Et>
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0,top: 15,bottom: 10),
                      child: Text("İzlemeye Devam Et",style: TextStyle(color: Colors.white),),
                    ),
                    FutureBuilder<List<Movie>>(
                      future: getMovieKeepWatching(),
                      builder: (context,snapshot){
                        if (snapshot.hasData){
                          var filmlerListesi = snapshot.data;
                          return SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height/3,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: filmlerListesi!.length,
                              itemBuilder: (context,index){
                                var film = filmlerListesi[index];
                                return GestureDetector(
                                    onTap: (){
                                      //Navigator.push(context, MaterialPageRoute(builder: (context) => FilmDetaySayfa(film: film)));
                                    },
                                    child : Container(
                                      width: MediaQuery.of(context).size.width*0.9,
                                      decoration: BoxDecoration(color: const Color(0xFF13161f), borderRadius: BorderRadius.circular(5)),
                                      margin: const EdgeInsets.only(left: 12),
                                      child: ClipRRect(
                                        borderRadius:const BorderRadius.only(topLeft: Radius.circular(5),topRight:Radius.circular(5) ), // Image border
                                        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Container(
                                                height:MediaQuery.of(context).size.height*2/9,
                                                child: Stack(
                                                  children: [
                                                    SizedBox(width: MediaQuery.of(context).size.width*0.9,
                                                        child: Image.asset("pictures/${film.moviePictureName}",alignment: Alignment.center,fit: BoxFit.fill,),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(bottom: 5.0),
                                                      child: Column(mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment.bottomLeft,
                                                            child: Container(
                                                              alignment: Alignment.center,
                                                              margin: EdgeInsets.all(5),
                                                              padding: EdgeInsets.all(5),
                                                              decoration: BoxDecoration(color: Colors.black87, borderRadius: BorderRadius.circular(50)),
                                                              width: 30,
                                                              height: 30,
                                                              child:const Icon(Icons.play_arrow_rounded,color: Colors.white,)
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment: Alignment.bottomCenter,
                                                            child: LinearPercentIndicator(
                                                              width: MediaQuery.of(context).size.width*0.9,
                                                              lineHeight: 4.0,
                                                              percent:  1.0-(film.movieLeftDuratin/film.movieDuration),
                                                              barRadius: Radius.circular(30),
                                                              backgroundColor: Colors.grey,
                                                              progressColor: Colors.blue,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),

                                                  ],
                                                ),
                                            ),
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              padding: const EdgeInsets.only(left: 15),
                                              height:MediaQuery.of(context).size.height/9,
                                              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("${film.movieName}",style: const TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                                                  Text("${film.movieEpisode}",style: const TextStyle(fontSize: 12,color: Colors.white),),
                                                  Text("${film.movieLeftDuratin} dk kaldı",style: const TextStyle(fontSize: 12,color: Colors.white),),
                                                ],
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    )

                                );
                              },
                            ),
                          );
                        }else{
                          return const Center();
                        }
                      },
                    ),

                  ],
                ),
                //</İzlemeye Devam Et>

                //<En Çok İzlenenler>
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0,top: 15,bottom: 10),
                      child: Text("En Çok İzlenenler",style: TextStyle(color: Colors.white),),
                    ),
                    FutureBuilder<List<Movie>>(
                      future: getMovies(),
                      builder: (context,snapshot){
                        if (snapshot.hasData){
                          var filmlerListesi = snapshot.data;
                          return SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height*0.18,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: filmlerListesi!.length,
                              itemBuilder: (context,index){
                                var film = filmlerListesi[index];
                                return GestureDetector(
                                    onTap: (){
                                      //Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailPage(movie: movie)));
                                    },
                                    child : Container(
                                      padding: const EdgeInsets.all(0.5), // Border width
                                      decoration: BoxDecoration(color: disneyButtonBorderColor, borderRadius: BorderRadius.circular(5)),
                                      margin: const EdgeInsets.only(left: 12),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5), // Image border
                                        child: Image.asset("pictures/${film.moviePictureName}"),
                                      ),
                                    )

                                );
                              },
                            ),
                          );
                        }else{
                          return const Center();
                        }
                      },
                    ),

                  ],
                ),
                //</En Çok İzlenenler>

                //<Sadece Disney+'ta>
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0,top: 15,bottom: 10),
                      child: Text("Sadece Disney+'ta",style: TextStyle(color: Colors.white),),
                    ),
                    FutureBuilder<List<Movie>>(
                      future: getMoviesJustDisneyPlus(),
                      builder: (context,snapshot){
                        if (snapshot.hasData){
                          var filmlerListesi = snapshot.data;
                          return SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height*0.18,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: filmlerListesi!.length,
                              itemBuilder: (context,index){
                                var film = filmlerListesi[index];
                                return GestureDetector(
                                    onTap: (){
                                      //Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailPage(movie: movie)));
                                    },
                                    child : Container(
                                      padding: const EdgeInsets.all(0.5), // Border width
                                      decoration: BoxDecoration(color: disneyButtonBorderColor, borderRadius: BorderRadius.circular(5)),
                                      margin: const EdgeInsets.only(left: 12),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5), // Image border
                                        child: Image.asset("pictures/${film.moviePictureName}"),
                                      ),
                                    )

                                );
                              },
                            ),
                          );
                        }else{
                          return const Center();
                        }
                      },
                    ),

                  ],
                ),
                //</Sadece Disney+'ta>

                //<Çok Yakında>
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0,top: 15,bottom: 10),
                      child: Text("Çok Yakında",style: TextStyle(color: Colors.white),),
                    ),
                    FutureBuilder<List<Movie>>(
                      future: getMovies(),
                      builder: (context,snapshot){
                        if (snapshot.hasData){
                          var filmlerListesi = snapshot.data;
                          return SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height*0.18,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: filmlerListesi!.length,
                              itemBuilder: (context,index){
                                var film = filmlerListesi[index];
                                return GestureDetector(
                                    onTap: (){
                                      //Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailPage(movie: movie)));
                                    },
                                    child : Container(
                                      padding: const EdgeInsets.all(0.5), // Border width
                                      decoration: BoxDecoration(color: disneyButtonBorderColor, borderRadius: BorderRadius.circular(5)),
                                      margin: const EdgeInsets.only(left: 12),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5), // Image border
                                        child: Image.asset("pictures/${film.moviePictureName}"),
                                      ),
                                    )

                                );
                              },
                            ),
                          );
                        }else{
                          return const Center();
                        }
                      },
                    ),

                  ],
                ),
                //</Çok Yakında>

              ],
            ),
          ),
        ),
    );
  }
}
