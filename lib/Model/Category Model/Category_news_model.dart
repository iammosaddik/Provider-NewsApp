/// success : true
/// message : "Loaded Successfully"
/// datas : {"current_page":1,"data":[{"id":1,"name":"Business","slug":"business-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/business.png"},{"id":5,"name":"Entertainment","slug":"entertainment-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/entertainment.png"},{"id":3,"name":"Lifestyle","slug":"lifestyle-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/lifestyle.png"},{"id":7,"name":"National","slug":"national-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/national.png"},{"id":4,"name":"Politics","slug":"politics-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/politics.png"},{"id":2,"name":"Sports","slug":"sports-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/sports.png"},{"id":6,"name":"Technology","slug":"technology-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/technology.png"},{"id":9,"name":"Travel","slug":"travel-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/travel.png"},{"id":8,"name":"World","slug":"world-news","image":"http://maannews.maantechnology.com/public/uploads/images/news_category/world.png"}],"first_page_url":"http://maannews.maantechnology.com/api/news_categories?page=1","from":1,"last_page":1,"last_page_url":"http://maannews.maantechnology.com/api/news_categories?page=1","links":[{"url":null,"label":"&laquo; Previous","active":false},{"url":"http://maannews.maantechnology.com/api/news_categories?page=1","label":"1","active":true},{"url":null,"label":"Next &raquo;","active":false}],"next_page_url":null,"path":"http://maannews.maantechnology.com/api/news_categories","per_page":10,"prev_page_url":null,"to":9,"total":9}

class CategoryNewsModel {
  CategoryNewsModel({
      bool? success, 
      String? message, 
      Datas? datas,}){
    _success = success;
    _message = message;
    _datas = datas;
}

  CategoryNewsModel.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _datas = json['data'] != null ? Datas.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  Datas? _datas;

  bool? get success => _success;
  String? get message => _message;
  Datas? get datas => _datas;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_datas != null) {
      map['data'] = _datas?.toJson();
    }
    return map;
  }

}
class Data {
  Data({
    int? id,
    String? name,
    String? slug,
    String? image,}){
    _id = id;
    _name = name;
    _slug = slug;
    _image = image;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _slug = json['slug'];
    _image = json['image'];
  }
  int? _id;
  String? _name;
  String? _slug;
  String? _image;

  int? get id => _id;
  String? get name => _name;
  String? get slug => _slug;
  String? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['slug'] = _slug;
    map['image'] = _image;
    return map;
  }

}
class Datas {
  Datas({
    int? currentPage,
    List<Data>? data,
    String? firstPageUrl,
    int? from,
    int? lastPage,
    String? lastPageUrl,
    List<Links>? links,
    dynamic nextPageUrl,
    String? path,
    int? perPage,
    dynamic prevPageUrl,
    int? to,
    int? total,}){
    _currentPage = currentPage;
    _data = data;
    _firstPageUrl = firstPageUrl;
    _from = from;
    _lastPage = lastPage;
    _lastPageUrl = lastPageUrl;
    _links = links;
    _nextPageUrl = nextPageUrl;
    _path = path;
    _perPage = perPage;
    _prevPageUrl = prevPageUrl;
    _to = to;
    _total = total;
  }

  Datas.fromJson(dynamic json) {
    _currentPage = json['current_page'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _firstPageUrl = json['first_page_url'];
    _from = json['from'];
    _lastPage = json['last_page'];
    _lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      _links = [];
      json['links'].forEach((v) {
        _links?.add(Links.fromJson(v));
      });
    }
    _nextPageUrl = json['next_page_url'];
    _path = json['path'];
    _perPage = json['per_page'];
    _prevPageUrl = json['prev_page_url'];
    _to = json['to'];
    _total = json['total'];
  }
  int? _currentPage;
  List<Data>? _data;
  String? _firstPageUrl;
  int? _from;
  int? _lastPage;
  String? _lastPageUrl;
  List<Links>? _links;
  dynamic _nextPageUrl;
  String? _path;
  int? _perPage;
  dynamic _prevPageUrl;
  int? _to;
  int? _total;

  int? get currentPage => _currentPage;
  List<Data>? get data => _data;
  String? get firstPageUrl => _firstPageUrl;
  int? get from => _from;
  int? get lastPage => _lastPage;
  String? get lastPageUrl => _lastPageUrl;
  List<Links>? get links => _links;
  dynamic get nextPageUrl => _nextPageUrl;
  String? get path => _path;
  int? get perPage => _perPage;
  dynamic get prevPageUrl => _prevPageUrl;
  int? get to => _to;
  int? get total => _total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = _currentPage;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['first_page_url'] = _firstPageUrl;
    map['from'] = _from;
    map['last_page'] = _lastPage;
    map['last_page_url'] = _lastPageUrl;
    if (_links != null) {
      map['links'] = _links?.map((v) => v.toJson()).toList();
    }
    map['next_page_url'] = _nextPageUrl;
    map['path'] = _path;
    map['per_page'] = _perPage;
    map['prev_page_url'] = _prevPageUrl;
    map['to'] = _to;
    map['total'] = _total;
    return map;
  }

}
class Links {
  Links({
    dynamic url,
    String? label,
    bool? active,}){
    _url = url;
    _label = label;
    _active = active;
  }

  Links.fromJson(dynamic json) {
    _url = json['url'];
    _label = json['label'];
    _active = json['active'];
  }
  dynamic _url;
  String? _label;
  bool? _active;

  dynamic get url => _url;
  String? get label => _label;
  bool? get active => _active;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['label'] = _label;
    map['active'] = _active;
    return map;
  }

}