class ColorsModel {
  int? status;
  String? statusText;
  String? message;
  int? count;
  List<Colors>? colors;

  ColorsModel(
      {this.status, this.statusText, this.message, this.count, this.colors});

  ColorsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusText = json['statusText'];
    message = json['message'];
    count = json['count'];
    if (json['colors'] != null) {
      colors = <Colors>[];
      json['colors'].forEach((v) {
        colors!.add( Colors.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = status;
    data['statusText'] = statusText;
    data['message'] = message;
    data['count'] = count;
    if (colors != null) {
      data['colors'] = colors!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Colors {
  String? name;
  String? theme;
  String? group;
  String? hex;
  String? rgb;

  Colors({this.name, this.theme, this.group, this.hex, this.rgb});

  Colors.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    theme = json['theme'];
    group = json['group'];
    hex = json['hex'];
    rgb = json['rgb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = name;
    data['theme'] = theme;
    data['group'] = group;
    data['hex'] = hex;
    data['rgb'] = rgb;
    return data;
  }
}

