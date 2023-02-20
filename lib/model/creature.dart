class Creature {
  String? creatureName;
  String? aboutCreature;
  String? groupType;
  String? diet;
  String? temperament;
  String? urlIcon;
  String? urlImage;
  String? audio;

  Creature(List data,
      {this.creatureName,
      this.aboutCreature,
      this.groupType,
      this.diet,
      this.temperament,
      this.urlIcon,
      this.urlImage,
      this.audio});

  Creature.fromJson(Map<String, dynamic> json) {
    creatureName = json['creatureName'];
    aboutCreature = json['aboutCreature'];
    groupType = json['groupType'];
    diet = json['diet'];
    temperament = json['temperament'];
    urlIcon = json['urlIcon'];
    urlImage = json['urlImage'];
    audio = json['audio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['creatureName'] = creatureName;
    data['aboutCreature'] = aboutCreature;
    data['groupType'] = groupType;
    data['diet'] = diet;
    data['temperament'] = temperament;
    data['urlIcon'] = urlIcon;
    data['urlImage'] = urlImage;
    data['audio'] = audio;
    return data;
  }
}
