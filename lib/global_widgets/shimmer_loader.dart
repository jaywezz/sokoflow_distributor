import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoading extends StatefulWidget {
  final double height, width;
  const ShimmerLoading({
  super.key,
  required this.height, required this.width,
  });


  @override
  State<ShimmerLoading> createState() => _ShimmerLoadingState();
}

class _ShimmerLoadingState extends State<ShimmerLoading> {
  @override
  Widget build(BuildContext context) {

    return Shimmer.fromColors(
        baseColor: Colors.grey[800]!,
        highlightColor: Colors.grey[600]!,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(.2),
              // border: Border.all(color: Colors.grey.shade300),
              borderRadius:
              const BorderRadius.all(Radius.circular(5))),
          height: widget.height,
          width: widget.width,
        )
    );
  }
}