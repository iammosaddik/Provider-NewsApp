

/// success : true
/// message : "Loaded Successfully"
/// data : {"id":51,"title":"Taina Blue Retreat is a Converted Tower on the Greek Coast","summary":"We wandered the site with busloads of other tourists, yet strangely the place did not seem crowded. I’m not sure if it was the sheer size of the place, or whether the masses congregated in one area and didn’t venture far from the main church.","description":"<span style=\"color: rgb(16, 38, 74); font-family: Poppins; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Greater Bridgeport – For a few moments on, August 11, 2020, the discussion of the ravages from the pandemic of COVID-19 was pushed aside by the rushing tide of history. Senator Kamala Harris of California became the nation’s first African American woman nominated for the vice presidency of the United States. It is a moment to be savored, a time to reflect, and a new journey to begin. Shirley Chisholm was the first African American woman elected to Congress, and the first Black major party candidate to run for president of the United States. In 1972 she said, “at present, our country needs women’s idealism and determination, perhaps more in politics than anywhere else.” The historicity of this hour reminds us again of that idealism, determination, and authentic sensitivity we often find in women. It just seems to be a part of who they are. It often appears in the way they govern. There is an undying belief on the part of women, expressed in the words of former presidential candidate Hillary Rodham Clinton, “we are agents of change, we are drivers of progress, we are makers of peace – all we need is a fighting chance.” This is a bold move on the part of Vice President Joe Biden. It is another opportunity for our nation to move a little closer towards a more perfect union. It is a union for which Dr. Martin Luther King, Jr., said, “one day we will judge people not by the color of their skin but by the content of their character.” While the NAACP does not endorse candidates, we are compelled to recognize the historic impact of these rare moments in time. This election will really be for the very soul of our nation. As the author James Cone has written When My Soul Looks Back, “it wonders how I get over.” I can hear the voice of Harriet Tubman humming. I can hear Ida B. Wells declaring, Fannie Lou Hamersinging, and Shirley Chisholm calling out the words of that old gospel song “he didn’t bring us this far to leave us.” It is time for everyone regardless of color, station, or vocation to Take Your Soles To The Polls. Take them by mail or directly to the voting booth. Let us Vote! Vote!!Vote!!</span>","image":["http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23032022_050521_Taina-Blue-Retreat-is-a-Converted-Tower-on-the-Greek-Coast.png"],"date":"2022-03-23","news_subcategory":"Politics","news_category":"Politics","news_categoryslug":"politics-news","reporter_name":"Repoter 11"}

class NewsDetailsModel {
  NewsDetailsModel({
      bool? success, 
      String? message, 
      Data? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  NewsDetailsModel.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  Data? _data;

  bool? get success => _success;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}


class Data {
  Data({
    int? id,
    String? title,
    String? summary,
    String? description,
    List<String>? image,
    String? date,
    String? newsSubcategory,
    String? newsCategory,
    String? newsCategoryslug,
    String? reporterName,}){
    _id = id;
    _title = title;
    _summary = summary;
    _description = description;
    _image = image;
    _date = date;
    _newsSubcategory = newsSubcategory;
    _newsCategory = newsCategory;
    _newsCategoryslug = newsCategoryslug;
    _reporterName = reporterName;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _summary = json['summary'];
    _description = json['description'];
    _image = json['image'] != null ? json['image'].cast<String>() : [];
    _date = json['date'];
    _newsSubcategory = json['news_subcategory'];
    _newsCategory = json['news_category'];
    _newsCategoryslug = json['news_categoryslug'];
    _reporterName = json['reporter_name'];
  }
  int? _id;
  String? _title;
  String? _summary;
  String? _description;
  List<String>? _image;
  String? _date;
  String? _newsSubcategory;
  String? _newsCategory;
  String? _newsCategoryslug;
  String? _reporterName;

  int? get id => _id;
  String? get title => _title;
  String? get summary => _summary;
  String? get description => _description;
  List<String>? get image => _image;
  String? get date => _date;
  String? get newsSubcategory => _newsSubcategory;
  String? get newsCategory => _newsCategory;
  String? get newsCategoryslug => _newsCategoryslug;
  String? get reporterName => _reporterName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['summary'] = _summary;
    map['description'] = _description;
    map['image'] = _image;
    map['date'] = _date;
    map['news_subcategory'] = _newsSubcategory;
    map['news_category'] = _newsCategory;
    map['news_categoryslug'] = _newsCategoryslug;
    map['reporter_name'] = _reporterName;
    return map;
  }

}