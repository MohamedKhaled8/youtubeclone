
import 'package:youtubeapp/model/statsics.dart';

import 'default.dart';

class Youtuber {
  Youtuber({
    this.snippet,
    this.statistics,
  });

  Snippet snippet;
  Statistics statistics;

  factory Youtuber.fromJson(Map<String, dynamic> json) => Youtuber(
    snippet: Snippet.fromJson(json["snippet"]),
    statistics: Statistics.fromJson(json["statistics"]),
  );
}