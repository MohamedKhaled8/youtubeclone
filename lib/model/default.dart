import 'dart:convert';

class Default {
  String url;
  int width;
  int higth;
  Default({
    this.url,
    this.width,
    this.higth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
      'width': width,
      'higth': higth,
    };
  }

  factory Default.fromMap(Map<String, dynamic> map) {
    return Default(
      url: map['url'],
      width: map['width']?.toInt(),
      higth: map['higth']?.toInt(),
    );
  }
}

class Thumbanils {
  Default ThumbanilsDefult;
  Default meduim;
  Default higth;
  Thumbanils({
    this.ThumbanilsDefult,
    this.meduim,
    this.higth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ThumbanilsDefult': ThumbanilsDefult.toMap(),
      'meduim': meduim.toMap(),
      'higth': higth.toMap(),
    };
  }

  factory Thumbanils.fromMap(Map<String, dynamic> map) {
    return Thumbanils(
      ThumbanilsDefult: Default.fromMap(map['ThumbanilsDefult']),
      meduim: Default.fromMap(map['meduim']),
      higth: Default.fromMap(map['higth']),
    );
  }
}

class Snippet {
  Thumbanils thumbnails;
  DateTime pubalishTime, publishedAt;
  String description;
  String title;
  String channelId;
  String liveBroadcastContent;
}

 


class Id {
  String playListId;
  String Kind;
  Id({
    this.playListId,
    this.Kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'playListId': playListId,
      'Kind': Kind,
    };
  }

  factory Id.fromMap(Map<String, dynamic> map) {
    return Id(
      playListId: map['playListId'],
      Kind: map['Kind'],
    );
  }
}
