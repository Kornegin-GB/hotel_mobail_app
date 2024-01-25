import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class SliderWidget {
  ExpandableCarousel getSlider(List<dynamic> pageData) {
    return ExpandableCarousel(
      items: pageData.map((e) {
        return Builder(
          builder: (context) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(e),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(viewportFraction: 1.0),
    );
  }
}
