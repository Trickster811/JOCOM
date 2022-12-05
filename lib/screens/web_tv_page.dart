import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class WebTVScreen extends StatefulWidget {
  @override
  State<WebTVScreen> createState() => _WebTVScreenState();
}

class _WebTVScreenState extends State<WebTVScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              children: [
                Text(
                  'En direct',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  height: 2.5,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 90,
            width: double.maxFinite,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(),
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // webTvLiveItemBuilder(),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              children: [
                Text(
                  'Rediffusions',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  height: 2.5,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reportages',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 2.5,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                WebTvRedirectItemBuilder(
                  "https://www.youtube.com/watch?v=dIK5MNvaxeY",
                ),
                // WebTvRedirectItemBuilder(
                //   "https://www.youtube.com/watch?v=dIK5MNvaxeY",
                // ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Interviews',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 2.5,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // WebTvRedirectItemBuilder(
                //   "https://www.youtube.com/watch?v=dIK5MNvaxeY",
                // ),
                // WebTvRedirectItemBuilder(
                //   "https://www.youtube.com/watch?v=dIK5MNvaxeY",
                // ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Journals',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 2.5,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // WebTvRedirectItemBuilder(
                //   "https://www.youtube.com/watch?v=dIK5MNvaxeY",
                // ),
                // WebTvRedirectItemBuilder(
                //   "https://www.youtube.com/watch?v=dIK5MNvaxeY",
                // ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }

  Padding WebTvRedirectItemBuilder(String videoUrl) {
    // late YoutubeMetaData _videoMetaData;
    late YoutubePlayerController _controller;

    final videoID = YoutubePlayer.convertUrlToId(videoUrl);
    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: YoutubePlayerFlags(
        autoPlay: false,
      ),
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.amber,
              progressColors: ProgressBarColors(
                playedColor: Colors.amber,
                handleColor: Colors.amberAccent,
              ),
              onReady: () {
                setState(() {
                  // _videoMetaData = _controller.metadata;
                });
              },
              bottomActions: [
                CurrentPosition(),
                ProgressBar(
                  isExpanded: true,
                  colors: ProgressBarColors(
                    playedColor: Colors.blue,
                    handleColor: Colors.blueAccent,
                  ),
                ),
                PlaybackSpeedButton(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8.0),
            alignment: Alignment.centerLeft,
            width: 300,
            child: Text(
              '_videoMetaData.title',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget webTvLiveItemBuilder() {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'iLnmTe5Q2Qw',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        isLive: true,
      ),
    );

    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            ClipOval(
              child: Container(
                height: 65,
                width: 65,
                color: Colors.red,
                child: YoutubePlayer(
                  controller: _controller,
                  liveUIColor: Colors.blue,
                ),
              ),
            ),
            Text(
              'Reportage',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
