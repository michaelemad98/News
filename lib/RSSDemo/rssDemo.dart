// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:webfeed/webfeed.dart';
// import 'package:http/http.dart' as http;
// import 'package:url_launcher/url_launcher.dart';
//
// class RSSDemo extends StatefulWidget {
//   RSSDemo() : super();
//   final String title = 'RSS Feed Demo';
//
//   //const RSSDemo({Key? key}) : super(key: key);
//   @override
//   _RSSDemoState createState() => _RSSDemoState();
// }
//
// class _RSSDemoState extends State<RSSDemo> {
//   static const String FEED_URL =
//       'https://www.almasryalyoum.com/rss/rssfeeds?homePage=true';
//   late RssFeed _feed;
//   late String _title;
//   static const String loadingFeedMsg = 'Loading Feed...';
//   static const String feedLoadErrorMsg = 'Error Loading Feed...';
//   static const String feedOpenErrorMsg = 'Error Opening Feed.';
//   static const String placeholderImg = 'assets/images/noimage.png';
//
//   updateTitle(title) {
//     setState(() {
//       _title = title;
//     });
//   }
//
//   updateFeed(feed) {
//     setState(() {
//       _feed = feed;
//     });
//   }
//
//   lood() async {
//     updateTitle(loadingFeedMsg);
//     loadFeed().then((result) {
//       if (null == result || result.toString().isEmpty) {
//         updateTitle(feedLoadErrorMsg);
//         return;
//       }
//       updateFeed(result);
//       updateTitle(_feed.title);
//     });
//   }
//
//   Future<RssFeed?> loadFeed() async {
//     try {
//       final client = http.Client();
//       final response = await client.get(Uri.https(FEED_URL, 'whatsit/create'));
//       return RssFeed.parse(response.body);
//     } catch (e) {}
//     return null;
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     updateTitle(widget.title);
//     lood();
//   }
//
//   title(title) {
//     return Text(
//       title,
//       style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//       maxLines: 2,
//       overflow: TextOverflow.ellipsis,
//     );
//   }
//
//   description(description) {
//     return Text(
//       description,
//       style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100),
//       maxLines: 1,
//       overflow: TextOverflow.ellipsis,
//     );
//   }
//
//   thumbnail(imageurl) {
//     return Padding(
//       padding: EdgeInsets.only(left: 15.0),
//       child: CachedNetworkImage(
//         placeholder: (context, url) => CircularProgressIndicator(),
//         imageUrl: imageurl,
//         errorWidget: (context, url, error) => Icon(Icons.error),
//         height: 50,
//         width: 70,
//         alignment: Alignment.center,
//         fit: BoxFit.fill,
//       ),
//     );
//   }
//
//   rightIcon() {
//     return Icon(
//       Icons.keyboard_arrow_right,
//       color: Colors.grey,
//       size: 30.0,
//     );
//   }
//
//   list() {
//     return ListView.builder(
//       itemCount: _feed.items!.length,
//       itemBuilder: (BuildContext context, int index) {
//         final item = _feed.items![index];
//         return ListTile(
//           title: title(item.title),
//           subtitle: description(item.pubDate),
//           leading: thumbnail(item.enclosure!.url),
//           trailing: rightIcon(),
//           contentPadding: EdgeInsets.all(5.0),
//           onTap: () {
//             //
//           },
//         );
//       },
//     );
//   }
//   isFeedEmpty() {
//     return null == _feed || null == _feed.items;
//   }
//
//   body() {
//     return isFeedEmpty()
//         ? Center(
//             child: CircularProgressIndicator(),
//           )
//         : list();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(_title),
//       ),
//       body:
//
//     );
//   }
// }
