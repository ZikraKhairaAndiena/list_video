// To parse this JSON data, do
//
//     final modelVideo = modelVideoFromJson(jsonString);

import 'dart:convert';

ModelVideo modelVideoFromJson(String str) => ModelVideo.fromJson(json.decode(str));

String modelVideoToJson(ModelVideo data) => json.encode(data.toJson());

class ModelVideo {
  bool isSuccess;
  String message;
  List<Datum> data;

  ModelVideo({
    required this.isSuccess,
    required this.message,
    required this.data,
  });

  factory ModelVideo.fromJson(Map<String, dynamic> json) => ModelVideo(
    isSuccess: json["isSuccess"],
    message: json["message"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "isSuccess": isSuccess,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  String id;
  String judulVideo;
  String fileVideo;
  String gambarVideo;

  Datum({
    required this.id,
    required this.judulVideo,
    required this.fileVideo,
    required this.gambarVideo,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    judulVideo: json["judul_video"],
    fileVideo: json["file_video"],
    gambarVideo: json["gambar_video"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "judul_video": judulVideo,
    "file_video": fileVideo,
    "gambar_video": gambarVideo,
  };
}
