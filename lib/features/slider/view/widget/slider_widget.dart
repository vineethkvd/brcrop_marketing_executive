import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../controller/slider_controller.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  final SliderController _controller = Get.put(SliderController());

  @override
  void initState() {
    super.initState();
    _controller.fetchSliderData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Obx(() {
            if (_controller.dataList.isNotEmpty) {
              return Column(
                children: [
                  Expanded(
                    child: CarouselSlider.builder(
                      itemCount: _controller.dataList.length,
                      itemBuilder: (context, index, realIndex) {
                        final sliderData = _controller.dataList[index];
                        return GestureDetector(
                          onTap: () => _controller
                              .launUrl(sliderData.sliderLink.toString()),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 2),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: CachedNetworkImage(
                                imageUrl: sliderData.sliderImg.toString(),
                                fit: BoxFit.cover,
                                placeholder: (context, url) => const Center(
                                  child: CupertinoActivityIndicator(),
                                ),
                                errorWidget: (context, url, error) =>
                                    const Center(
                                  child: Icon(Icons.error),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 15 / 7,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          _controller.currentIndex.value = index;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.h),
                    child: _buildIndicator(),
                  ),
                ],
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
        ),
      ],
    );
  }

  Widget _buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(_controller.dataList.length, (index) {
        return Container(
          width: 8.0,
          height: 8.0,
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _controller.currentIndex.value == index
                ? Colors.blue
                : Colors.grey,
          ),
        );
      }),
    );
  }
}
