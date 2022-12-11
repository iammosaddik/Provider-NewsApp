
/// success : true
/// message : "Loaded Successfully"
/// datas : {"current_page":1,"data":[{"id":51,"title":"Taina Blue Retreat is a Converted Tower on the Greek Coast","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23032022_050521_Taina-Blue-Retreat-is-a-Converted-Tower-on-the-Greek-Coast.png"],"date":"2022-03-23","created_at":"2022-03-23T05:05:21.000000Z","news_subcategory":"Politics","news_category":"Politics","news_categoryslug":"politics-news","reporter_name":"Repoter 11"},{"id":49,"title":"Reating a vision for the future: how technology will revolutionise the business finance function","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23102021_115552_Chinese-Fan-Dance.jpg"],"date":"2021-11-04","created_at":"2021-10-23T11:55:52.000000Z","news_subcategory":"Movies","news_category":"Entertainment","news_categoryslug":"entertainment-news","reporter_name":"Reporter 21"},{"id":48,"title":"Entertainment partners chill at home with a few must-see movies or head out for","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage24102021_050111_maannewsimage19102021_094212_remote_work3_190515-800x450.jpg"],"date":"2021-11-06","created_at":"2021-10-23T11:50:10.000000Z","news_subcategory":"World","news_category":"World","news_categoryslug":"world-news","reporter_name":"Reporter 21"},{"id":47,"title":"With the thrills of a casino, the excitement of live harness racing and the delight of fine food and spirits, you can kick back","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage24102021_050503_politics.jpg"],"date":"2021-10-23","created_at":"2021-10-23T11:28:51.000000Z","news_subcategory":"Politics","news_category":"Politics","news_categoryslug":"politics-news","reporter_name":"Reporter 21"},{"id":46,"title":"Amazon has 143 billion reasons to keep Strech lining hemline above knee burgundy glossy silk complete hid zip little catches rayon","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23102021_072605_amazon.jpg"],"date":"2021-11-03","created_at":"2021-10-23T07:24:11.000000Z","news_subcategory":"Movies","news_category":"Entertainment","news_categoryslug":"entertainment-news","reporter_name":"Reporter 21"},{"id":45,"title":"Bolsonaro’s new alliance for brazil is a lesson in the politics of loyalty and campaign finance  For over three decades, Bolsonaro used different","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage30012022_034317_politics_3.jpg"],"date":"2021-11-14","created_at":"2021-10-23T06:12:58.000000Z","news_subcategory":"Politics","news_category":"Politics","news_categoryslug":"politics-news","reporter_name":"Reporter 21"},{"id":44,"title":"Official press statement an historic moment time and a new journey to begin. Shirley Chisholm was the first African American woman elected to Congress","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage30012022_034246_politics_2.jpg"],"date":"2021-10-23","created_at":"2021-10-23T06:09:35.000000Z","news_subcategory":"Politics","news_category":"Politics","news_categoryslug":"politics-news","reporter_name":"Reporter 21"},{"id":43,"title":"Green-party success Is reshaping global politics are increasingly shaping the debate in countries around the world","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23102021_060444_politics.jpg"],"date":"2021-10-23","created_at":"2021-10-23T06:04:44.000000Z","news_subcategory":"Movies","news_category":"Entertainment","news_categoryslug":"entertainment-news","reporter_name":"Reporter 21"},{"id":42,"title":"Computer technology.generation new computer technology Stock Our managed it and it monitoring services allow you to focus","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23102021_114415_techno.jpg"],"date":"2021-11-04","created_at":"2021-10-21T12:48:57.000000Z","news_subcategory":"Communication","news_category":"Technology","news_categoryslug":"technology-news","reporter_name":"Reporter 21"},{"id":41,"title":"Manages and administers a specific function of the Police department’s it systems  including support in computer hardware","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage30012022_035547_card_1.jpg"],"date":"2021-11-03","created_at":"2021-10-21T12:46:11.000000Z","news_subcategory":"Movies","news_category":"Entertainment","news_categoryslug":"entertainment-news","reporter_name":"Reporter 21"}],"first_page_url":"http://maannews.maantechnology.com/api/latest_news?page=1","from":1,"last_page":5,"last_page_url":"http://maannews.maantechnology.com/api/latest_news?page=5","links":[{"url":null,"label":"&laquo; Previous","active":false},{"url":"http://maannews.maantechnology.com/api/latest_news?page=1","label":"1","active":true},{"url":"http://maannews.maantechnology.com/api/latest_news?page=2","label":"2","active":false},{"url":"http://maannews.maantechnology.com/api/latest_news?page=3","label":"3","active":false},{"url":"http://maannews.maantechnology.com/api/latest_news?page=4","label":"4","active":false},{"url":"http://maannews.maantechnology.com/api/latest_news?page=5","label":"5","active":false},{"url":"http://maannews.maantechnology.com/api/latest_news?page=2","label":"Next &raquo;","active":false}],"next_page_url":"http://maannews.maantechnology.com/api/latest_news?page=2","path":"http://maannews.maantechnology.com/api/latest_news","per_page":10,"prev_page_url":null,"to":10,"total":47}

class LatestNewsModel {
  LatestNewsModel({
      bool? success, 
      String? message, 
      Datas? datas,}){
    _success = success;
    _message = message;
    _datas = datas;
}

  LatestNewsModel.fromJson(dynamic json) {
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

class Datas {
  Datas({
    int? currentPage,
    List<Data>? data,
    String? firstPageUrl,
    int? from,
    int? lastPage,
    String? lastPageUrl,
    List<Links>? links,
    String? nextPageUrl,
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
  String? _nextPageUrl;
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
  String? get nextPageUrl => _nextPageUrl;
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

class Data {
  Data({
    int? id,
    String? title,
    List<String>? image,
    String? date,
    String? createdAt,
    String? newsSubcategory,
    String? newsCategory,
    String? newsCategoryslug,
    String? reporterName,}){
    _id = id;
    _title = title;
    _image = image;
    _date = date;
    _createdAt = createdAt;
    _newsSubcategory = newsSubcategory;
    _newsCategory = newsCategory;
    _newsCategoryslug = newsCategoryslug;
    _reporterName = reporterName;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _image = json['image'] != null ? json['image'].cast<String>() : [];
    _date = json['date'];
    _createdAt = json['created_at'];
    _newsSubcategory = json['news_subcategory'];
    _newsCategory = json['news_category'];
    _newsCategoryslug = json['news_categoryslug'];
    _reporterName = json['reporter_name'];
  }
  int? _id;
  String? _title;
  List<String>? _image;
  String? _date;
  String? _createdAt;
  String? _newsSubcategory;
  String? _newsCategory;
  String? _newsCategoryslug;
  String? _reporterName;

  int? get id => _id;
  String? get title => _title;
  List<String>? get image => _image;
  String? get date => _date;
  String? get createdAt => _createdAt;
  String? get newsSubcategory => _newsSubcategory;
  String? get newsCategory => _newsCategory;
  String? get newsCategoryslug => _newsCategoryslug;
  String? get reporterName => _reporterName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['image'] = _image;
    map['date'] = _date;
    map['created_at'] = _createdAt;
    map['news_subcategory'] = _newsSubcategory;
    map['news_category'] = _newsCategory;
    map['news_categoryslug'] = _newsCategoryslug;
    map['reporter_name'] = _reporterName;
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