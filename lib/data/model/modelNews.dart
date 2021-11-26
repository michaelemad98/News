class News {
  News({
    required this.rss,
  });

  Rss rss;
}

class Rss {
  Rss({
    required this.channel,
    required this.version,
  });

  Channel channel;
  String version;
}
class Channel {
  late String title;
 late String link;
  late String description;
  late String language;
  late String copyright;
  late Image image;
  late String lastBuildDate;
  late List<Item> item;
  Channel.fromXml(Map<String,dynamic>xml){
    title = xml['title'];
    link = xml['link'];
    description = xml['description'];
    language = xml['language'];
    copyright = xml['copyright'];
    lastBuildDate = xml['lastBuildDate'];
    item = xml['item'];
  }
}
class Image {
  late String url;
  Image.fromXml(Map<String,dynamic>xml){
    url=xml['url'];
  }
}
class Item {
  late String title;
  late String description;
  late String link;
  late Image image;
  late String pubDate;
  Item.fromXml(Map<String,dynamic>xml){
    title=xml['title'];
    description=xml['description'];
    link=xml['link'];
    image=xml['image'];
    pubDate=xml['pubDate'];
  }
}