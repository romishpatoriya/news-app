import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Data {
    String? status;
    int? totalResults;
   late List<Articles> articles;

  Data({ this.status,  this.totalResults,required this.articles});

  Data.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = <Articles>[];
      json['articles'].forEach((v) {
        articles.add(Articles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['totalResults'] = totalResults;
    data['articles'] = articles.map((v) => v.toJson()).toList();
    return data;
  }
}

class Articles {
   Source? source;
   String? author;
   late String title;
   late String description;
   late String? url;
   late String urlToImage;
   String? publishedAt;
   String? content;

  Articles(
      {required this.source,
        required this.author,
        required this.title,
        required this.description,
        required this.url,
        required this.urlToImage,
        required this.publishedAt,
        required this.content});

  Articles.fromJson(Map<String, dynamic> json) {
    source =
    (json['source'] != null ? Source.fromJson(json['source']) : null)!;
    author = json['author'];
    title = json['title'] ?? " ";
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'] ?? " ";
    publishedAt = json['publishedAt'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['source'] = source!.toJson();
    data['author'] = author;
    data['title'] = title;
    data['description'] = description;
    data['url'] = url;
    data['urlToImage'] = urlToImage ;
    data['publishedAt'] = publishedAt;
    data['content'] = content;
    return data;
  }
}

class Source {
  // String id;
   String? name;

  Source({  required this.name});

  Source.fromJson(Map<String, dynamic> json) {
    //id = json['id'] == 'null' ? " ":json['id'] ;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
   // data['id'] = id;
    data['name'] = name;
    return data;
  }
}
