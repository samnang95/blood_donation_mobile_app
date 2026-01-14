// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// import '../../constants/app_colors.dart';
// import '../../constants/app_icons.dart';
// import '../../constants/locale_keys.dart';
//
// class XTextSearch extends StatefulWidget {
//   final String hintText;
//   final TextEditingController? controller;
//   final ValueChanged<String>? onChanged;
//
//   const XTextSearch({
//     super.key,
//     this.hintText = LocaleKeys.search,
//     this.onChanged,
//     this.controller,
//   });
//
//   @override
//   State<XTextSearch> createState() => _XTextSearchState();
// }
//
// class _XTextSearchState extends State<XTextSearch> {
//   late final TextEditingController _controller;
//   bool _hasText = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = widget.controller ?? TextEditingController();
//
//     _hasText = _controller.text.isNotEmpty;
//     _controller.addListener(() {
//       if (_hasText != _controller.text.isNotEmpty) {
//         setState(() => _hasText = _controller.text.isNotEmpty);
//       }
//     });
//   }
//
//   @override
//   void dispose() {
//     if (widget.controller == null) {
//       _controller.dispose();
//     }
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final fieldHeight = screenWidth * 0.11;
//     final radius = fieldHeight / 2;
//     final horizontalPadding = screenWidth * 0.04;
//     final iconSize = fieldHeight * 0.45;
//
//     return Container(
//       height: fieldHeight,
//       decoration: BoxDecoration(
//         color: AppColors.backgroundColor,
//         borderRadius: BorderRadius.circular(radius),
//         boxShadow: [
//           BoxShadow(
//             color: AppColors.colorDarkSoftColor,
//             blurRadius: 1,
//             spreadRadius: 0.1,
//           ),
//         ],
//       ),
//       child: TextFormField(
//         controller: _controller,
//         onChanged: widget.onChanged,
//         style: TextStyle(fontSize: screenWidth * 0.04),
//         decoration: InputDecoration(
//           hintText: widget.hintText.tr(),
//           hintStyle: TextStyle(
//             fontSize: screenWidth * 0.04,
//             color: AppColors.colorDarkSoftColor,
//           ),
//           contentPadding: EdgeInsets.symmetric(
//             vertical: fieldHeight * 0.27,
//             horizontal: horizontalPadding,
//           ),
//           suffixIcon: InkWell(
//             onTap: _hasText
//                 ? () {
//                     _controller.clear();
//                     widget.onChanged?.call('');
//                   }
//                 : null,
//             child: Center(
//               child: SvgPicture.asset(
//                 _hasText ? AppIcons.icAvailableForDonate : AppIcons.icLogo,
//                 width: iconSize,
//                 height: iconSize,
//               ),
//             ),
//           ),
//           suffixIconConstraints: BoxConstraints(
//             minWidth: fieldHeight,
//             minHeight: fieldHeight,
//             maxWidth: fieldHeight,
//             maxHeight: fieldHeight,
//           ),
//           border: InputBorder.none,
//           enabledBorder: InputBorder.none,
//           focusedBorder: InputBorder.none,
//         ),
//       ),
//     );
//   }
// }
