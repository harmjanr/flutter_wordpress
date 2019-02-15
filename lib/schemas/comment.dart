import 'links.dart';
import 'avatar_urls.dart';
import 'content.dart';

class Comment {
  int id;
  int post;
  int parent;
  int author;
  String authorName;
  String authorEmail;
  String authorUrl;
  String authorIp;
  String authorUserAgent;
  String date;
  String dateGmt;
  Content content;
  String link;
  String status;
  String type;
  AvatarUrls authorAvatarUrls;
//  List<Null> meta;
  Links lLinks;

  Comment(
      {this.id,
        this.post,
        this.parent,
        this.author,
        this.authorName,
        this.authorEmail,
        this.authorUrl,
        this.authorIp,
        this.authorUserAgent,
        this.date,
        this.dateGmt,
        this.content,
        this.link,
        this.status,
        this.type,
        this.authorAvatarUrls,
//        this.meta,
        this.lLinks});

  Comment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    post = json['post'];
    parent = json['parent'];
    author = json['author'];
    authorName = json['author_name'];
    authorEmail = json['author_email'];
    authorUrl = json['author_url'];
    authorIp = json['author_ip'];
    authorUserAgent = json['author_user_agent'];
    date = json['date'];
    dateGmt = json['date_gmt'];
    content =
    json['content'] != null ? new Content.fromJson(json['content']) : null;
    link = json['link'];
    status = json['status'];
    type = json['type'];
    authorAvatarUrls = json['author_avatar_urls'] != null
        ? new AvatarUrls.fromJson(json['author_avatar_urls'])
        : null;
    /*if (json['meta'] != null) {
      meta = new List<Null>();
      json['meta'].forEach((v) {
        meta.add(new Null.fromJson(v));
      });
    }*/
    lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['post'] = this.post;
    data['parent'] = this.parent;
    data['author'] = this.author;
    data['author_name'] = this.authorName;
    data['author_email'] = this.authorEmail;
    data['author_url'] = this.authorUrl;
    data['author_ip'] = this.authorIp;
    data['author_user_agent'] = this.authorUserAgent;
    data['date'] = this.date;
    data['date_gmt'] = this.dateGmt;
    if (this.content != null) {
      data['content'] = this.content.toJson();
    }
    data['link'] = this.link;
    data['status'] = this.status;
    data['type'] = this.type;
    if (this.authorAvatarUrls != null) {
      data['author_avatar_urls'] = this.authorAvatarUrls.toJson();
    }
    /*if (this.meta != null) {
      data['meta'] = this.meta.map((v) => v.toJson()).toList();
    }*/
    if (this.lLinks != null) {
      data['_links'] = this.lLinks.toJson();
    }
    return data;
  }
}