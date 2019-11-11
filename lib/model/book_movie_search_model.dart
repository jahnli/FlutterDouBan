///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class BookMovieSearchModelCardsTarget {
/*
{
  "has_linewatch": true,
  "abstract": "",
  "title": "西西里的美丽传说",
  "uri": "douban://douban.com/movie/1292402",
  "cover_url": "https://qnmob3.doubanio.com/view/photo/large/public/p2441988159.jpg?imageView2/0/q/80/w/9999/h/120/format/jpg",
  "year": "2000",
  "card_subtitle": "8.8分 / 2000 / 意大利 美国 / 剧情 战争 情色 / 朱塞佩·托纳多雷 / 莫妮卡·贝鲁奇 朱塞佩·苏尔法罗",
  "id": "1292402"
} 
*/

  bool hasLinewatch;
  String theAbstract;
  String title;
  String uri;
  String coverUrl;
  String year;
  String cardSubtitle;
  String id;

  BookMovieSearchModelCardsTarget({
    this.hasLinewatch,
    this.theAbstract,
    this.title,
    this.uri,
    this.coverUrl,
    this.year,
    this.cardSubtitle,
    this.id,
  });
  BookMovieSearchModelCardsTarget.fromJson(Map<String, dynamic> json) {
    hasLinewatch = json["has_linewatch"];
    theAbstract = json["abstract"]?.toString();
    title = json["title"]?.toString();
    uri = json["uri"]?.toString();
    coverUrl = json["cover_url"]?.toString();
    year = json["year"]?.toString();
    cardSubtitle = json["card_subtitle"]?.toString();
    id = json["id"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["has_linewatch"] = hasLinewatch;
    data["abstract"] = theAbstract;
    data["title"] = title;
    data["uri"] = uri;
    data["cover_url"] = coverUrl;
    data["year"] = year;
    data["card_subtitle"] = cardSubtitle;
    data["id"] = id;
    return data;
  }
}

class BookMovieSearchModelCards {
/*
{
  "type_name": "电影",
  "layout": "subject",
  "target": {
    "has_linewatch": true,
    "abstract": "",
    "title": "西西里的美丽传说",
    "uri": "douban://douban.com/movie/1292402",
    "cover_url": "https://qnmob3.doubanio.com/view/photo/large/public/p2441988159.jpg?imageView2/0/q/80/w/9999/h/120/format/jpg",
    "year": "2000",
    "card_subtitle": "8.8分 / 2000 / 意大利 美国 / 剧情 战争 情色 / 朱塞佩·托纳多雷 / 莫妮卡·贝鲁奇 朱塞佩·苏尔法罗",
    "id": "1292402"
  },
  "target_type": "movie"
} 
*/

  String typeName;
  String layout;
  BookMovieSearchModelCardsTarget target;
  String targetType;

  BookMovieSearchModelCards({
    this.typeName,
    this.layout,
    this.target,
    this.targetType,
  });
  BookMovieSearchModelCards.fromJson(Map<String, dynamic> json) {
    typeName = json["type_name"]?.toString();
    layout = json["layout"]?.toString();
    target = json["target"] != null ? BookMovieSearchModelCardsTarget.fromJson(json["target"]) : null;
    targetType = json["target_type"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["type_name"] = typeName;
    data["layout"] = layout;
    if (target != null) {
      data["target"] = target.toJson();
    }
    data["target_type"] = targetType;
    return data;
  }
}

class BookMovieSearchModel {
/*
{
  "cards": [
    {
      "type_name": "电影",
      "layout": "subject",
      "target": {
        "has_linewatch": true,
        "abstract": "",
        "title": "西西里的美丽传说",
        "uri": "douban://douban.com/movie/1292402",
        "cover_url": "https://qnmob3.doubanio.com/view/photo/large/public/p2441988159.jpg?imageView2/0/q/80/w/9999/h/120/format/jpg",
        "year": "2000",
        "card_subtitle": "8.8分 / 2000 / 意大利 美国 / 剧情 战争 情色 / 朱塞佩·托纳多雷 / 莫妮卡·贝鲁奇 朱塞佩·苏尔法罗",
        "id": "1292402"
      },
      "target_type": "movie"
    }
  ],
  "banned": "",
  "words": [
    "西"
  ],
  "is_suicide": false
} 
*/

  List<BookMovieSearchModelCards> cards;
  String banned;
  List<String> words;
  bool isSuicide;

  BookMovieSearchModel({
    this.cards,
    this.banned,
    this.words,
    this.isSuicide,
  });
  BookMovieSearchModel.fromJson(Map<String, dynamic> json) {
  if (json["cards"] != null) {
  var v = json["cards"];
  var arr0 = List<BookMovieSearchModelCards>();
  v.forEach((v) {
  arr0.add(BookMovieSearchModelCards.fromJson(v));
  });
    cards = arr0;
    }
    banned = json["banned"]?.toString();
  if (json["words"] != null) {
  var v = json["words"];
  var arr0 = List<String>();
  v.forEach((v) {
  arr0.add(v.toString());
  });
    words = arr0;
    }
    isSuicide = json["is_suicide"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (cards != null) {
      var v = cards;
      var arr0 = List();
  v.forEach((v) {
  arr0.add(v.toJson());
  });
      data["cards"] = arr0;
    }
    data["banned"] = banned;
    if (words != null) {
      var v = words;
      var arr0 = List();
  v.forEach((v) {
  arr0.add(v);
  });
      data["words"] = arr0;
    }
    data["is_suicide"] = isSuicide;
    return data;
  }
}