class Event {
  int id;
  String startDate;
  String endDate;
  String title;
  String description;

  Event(this.id, this.startDate, this.endDate,
      this.title, this.description);

  Event.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    title = json['title'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['title'] = this.title;
    data['description'] = this.description;

    return data;
  }

  @override
  String toString() {
    return 'id: $id, title: $title';
  }
}
