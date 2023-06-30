import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_order_body.g.dart';
part 'post_order_body.freezed.dart';

@freezed
class PostOrderBody with _$PostOrderBody {
  factory PostOrderBody({
    required String id,
    required List<PostOrderBodyProduct> products,
    required int totalPrice,
    required String createdAt,
  }) = _PostOrderBody;

  factory PostOrderBody.fromJson(Map<String, dynamic> json) =>
      _$PostOrderBodyFromJson(json);
}

@JsonSerializable()
class PostOrderBodyProduct {
  final String productId;
  final int count;

  PostOrderBodyProduct({
    required this.productId,
    required this.count,
  });

  factory PostOrderBodyProduct.fromJson(Map<String, dynamic> json) =>
      _$PostOrderBodyProductFromJson(json);

  Map<String, dynamic> toJson() => _$PostOrderBodyProductToJson(this);
}
