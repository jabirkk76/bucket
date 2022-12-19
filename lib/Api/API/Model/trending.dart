class TrendingModel {
  String? titl;
  List imgees;
  TrendingModel({required this.imgees, this.titl});
  factory TrendingModel.from(Map<String, dynamic> json) {
    // final a = json['images'];
    // final List<String> b = List<String>.from(a);

    return TrendingModel(
        imgees: (json['images'] as List<dynamic>).map((e) => e).toList(),
        titl: json['title']);
  }
}
