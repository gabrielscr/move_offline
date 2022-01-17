import 'dart:convert';

ProdutoModel produtoModelFromJson(String str) => ProdutoModel.fromJson(json.decode(str));

String produtoModelToJson(ProdutoModel data) => json.encode(data.toJson());

class ProdutoModel {
  ProdutoModel({
    this.id,
    this.titulo,
    this.descricao,
    this.preco,
    this.fotos,
  });

  int? id;
  String? titulo;
  String? descricao;
  double? preco;
  List<String>? fotos;

  factory ProdutoModel.fromJson(Map<String, dynamic> json) => ProdutoModel(
        id: json["id"],
        titulo: json["titulo"],
        descricao: json["descricao"],
        preco: json["preco"].toDouble(),
        fotos: List<String>.from(json["fotos"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "titulo": titulo,
        "descricao": descricao,
        "preco": preco,
        "fotos": List<dynamic>.from(fotos!.map((x) => x)),
      };
}
