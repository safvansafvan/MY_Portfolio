import 'package:flutter/material.dart';

class ImageViewWidget extends StatefulWidget {
  const ImageViewWidget({super.key, required this.projectDetails});
  final Map<String, dynamic> projectDetails;

  @override
  State<ImageViewWidget> createState() => _ImageViewWidgetState();
}

class _ImageViewWidgetState extends State<ImageViewWidget> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(right: 20),
          margin: const EdgeInsets.only(bottom: 20),
          height: 450,
          child: ListView.builder(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: 9,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/project/nexon_ev/image1.jpeg'),
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black45,
                size: 25,
              ),
              onPressed: _scrollBackward,
            ),
            const SizedBox(
              width: 50,
            ),
            IconButton(
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.black45,
                size: 25,
              ),
              onPressed: _scrollForward,
            ),
          ],
        ),
      ],
    );
  }

  void _scrollForward() {
    _scrollController.animateTo(
      _scrollController.offset + 200,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  void _scrollBackward() {
    _scrollController.animateTo(
      _scrollController.offset - 200,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }
}
