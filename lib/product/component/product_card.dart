import 'package:flutter/material.dart';

import '../../common/component/color.dart';

class ProductCard extends StatelessWidget {
  final Image image;
  final String name;
  final String detail;
  final int price;
  final String id;
  final VoidCallback? onSubtract;
  final VoidCallback? onAdd;

  const ProductCard(
      {required this.image,
      required this.name,
      required this.detail,
      required this.price,
      required this.id,
      this.onSubtract,
      this.onAdd,
      Key? key})
      : super(key: key);

  // Image.asset(
  // 'asset/img/food/ddeok_bok_gi.jpg',
  // width: 110,
  // height: 110,
  // fit: BoxFit.cover,
  // )

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IntrinsicHeight(
          //Row안에서 Widget들이 각자의 크기로 보여짐
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  8.0,
                ),
                child: image,
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      detail,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                        color: BODY_TEXT_COLOR,
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      '￦$price',
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        color: PRIMARY_COLOR,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // //현재 basket에 상품이 존재한다는 가정
        // if (onSubtract != null && onAdd != null)
        //   Padding(
        //     padding: const EdgeInsets.only(top: 8.0),
        //     child: _Footer(
        //       total: (basket.firstWhere((e) => e.product.id == id).count *
        //               basket
        //                   .firstWhere((e) => e.product.id == id)
        //                   .product
        //                   .price)
        //           .toString(),
        //       count: basket.firstWhere((e) => e.product.id == id).count,
        //       onSubtract: onSubtract!,
        //       onAdd: onAdd!,
        //     ),
        //   ),
      ],
    );
  }
}

// class _Footer extends StatelessWidget {
//   final String total;
//   final int count;
//   final VoidCallback onSubtract;
//   final VoidCallback onAdd;

//   const _Footer({
//     required this.total,
//     required this.count,
//     required this.onSubtract,
//     required this.onAdd,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           child: Text(
//             '총액 ₩$total',
//             style: const TextStyle(
//               color: PRIMARY_COLOR,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ),
//         Row(
//           children: [
//             //
//             renderButton(
//               icon: Icons.remove,
//               onTap: onSubtract,
//             ),
//             const SizedBox(width: 8.0),
//             Text(
//               count.toString(),
//               style: const TextStyle(
//                 color: PRIMARY_COLOR,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             const SizedBox(width: 8.0),

//             //
//             renderButton(
//               icon: Icons.add,
//               onTap: onAdd,
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget renderButton({
//     required IconData icon,
//     required VoidCallback onTap,
//   }) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8.0),
//         border: Border.all(
//           color: PRIMARY_COLOR,
//           width: 1.0,
//         ),
//       ),
//       child: InkWell(
//         onTap: onTap,
//         child: Icon(
//           icon,
//           color: PRIMARY_COLOR,
//         ),
//       ),
//     );
//   }
// }
