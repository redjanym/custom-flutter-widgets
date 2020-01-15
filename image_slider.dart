import 'package:flutter/material.dart';

//
// An Instagram like Image Slider Widget
//
class ImageSlider extends StatefulWidget {
  final List images;
  final double height;
  final bool showPointers;

  ImageSlider({this.images, this.height = 300, this.showPointers = true});

  @override
  State<StatefulWidget> createState() {
    return _ImageSliderState();
  }
}

class _ImageSliderState extends State<ImageSlider> {
  int selectedImageIndex = 0;
  int maxImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    // check if no images given
    if (widget.images.length == 0) {
      return Container();
    }

    // set max index
    maxImageIndex = widget.images.length - 1;
    PageController pageController = PageController(initialPage: 0);
    List<Widget> listOfImages = [];

    for (var i = 0; i < widget.images.length; i++) {
      Map image = widget.images[i];

      listOfImages.add(
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image['url']),
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }

    return Column(
      children: <Widget>[
        Container(
          height: widget.height,
          child: PageView(
            controller: pageController,
            children: listOfImages,
            onPageChanged: (int page) {
              setState(() {
                selectedImageIndex = page;
              });
            },
          ),
        ),
        widget.images.length > 1 && widget.showPointers ? _buildImagePointers() : Container()
      ],
    );
  }

  Widget _buildImagePointers() {
    List<Widget> listItems = [];

    for (int i = 0; i < widget.images.length; i++) {
      listItems.add(
        Container(
          margin: EdgeInsets.only(left: 2, right: 2),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color:
                this.selectedImageIndex == i ? Colors.black : Colors.grey[300],
          ),
          child: null /* add child content here */,
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: listItems,
      ),
    );
  }
}
