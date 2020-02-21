class Event {
  int id;
  String startDate;
  String endDate;
  String title;
  String thumbnail;

  Event(this.id, this.startDate, this.endDate, this.title, this.thumbnail);

  Event.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    title = json['title'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['title'] = this.title;
    data['thumbnail'] = this.thumbnail;

    return data;
  }

  @override
  String toString() {
    return 'id: $id, title: $title';
  }
}
