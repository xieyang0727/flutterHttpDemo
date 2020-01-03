/// generate with json by https://javiercbk.github.io/json_to_dart/

/// 返回对象
class MainListBean {
  String code;
  List<Result> result;

  MainListBean({this.code, this.result});

  MainListBean.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['result'] != null) {
      result = new List<Result>();
      json['result'].forEach((v) {
        result.add(new Result.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.result != null) {
      data['result'] = this.result.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Result {
  String category;
  String imgurl;

  Result({
    this.category,
    this.imgurl,
  });

  Result.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    imgurl = json['imgurl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    data['imgurl'] = this.imgurl;
    return data;
  }
}
