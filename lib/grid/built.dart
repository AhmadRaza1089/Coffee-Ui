import 'package:flutter/material.dart';
import 'package:listvie2/grid/data.dart';
import 'package:listvie2/grid/griddata.dart';

class Built extends StatelessWidget {
  const Built({required this.data, super.key});
  final List<Data> data;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const CarouselScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300),
          itemCount: data.length,
      itemBuilder: (context, index) {
        return Info(data: data[index]);
      },
    );
  }
}
