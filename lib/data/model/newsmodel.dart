class Newson {
  Newson({
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
  Channel({
    required this.title,
    required this.link,
    required  this.description,
    required  this.language,
    required this.copyright,
    required this.image,
    required this.lastBuildDate,
    required this.item,
  });

  String title;
  String link;
  String description;
  String language;
  String copyright;
  Image image;
  String lastBuildDate;
  List<Item> item;
}

class Image {
  Image({
    required this.url,
  });

  String url;
}

class Item {
  Item({
    required this.title,
    required this.description,
    required this.link,
    required this.image,
    required this.pubDate,
  });

  String title;
  String description;
  String link;
  Image image;
  String pubDate;
}
