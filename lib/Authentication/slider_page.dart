import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Constant Data/app_color.dart';
import '../Slider Model/slider_model.dart';
import 'get_started.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarouselSlider.builder(
                itemCount: sliderShow.length,
                  carouselController: _controller,
                  itemBuilder: (context, index, realIndex) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('${sliderShow[index].imgUrl}'),fit: BoxFit.fill)
                    ),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Text('${sliderShow[index].name}'),
                    ),
                  ),
            options: CarouselOptions(
            height: 300.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 2.0,
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reason) {
              setState(() {
                _current=index;
              });
            },
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
          ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: sliderShow.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          // shape: BoxShape.circle,
                          color: (Theme.of(context).brightness == Brightness.dark
                              ? greyDarkerColor
                              : purplePrimaryColor)
                              .withOpacity(_current == entry.key ? 1.0 : 0.1)),
                    ),
                  );
                }).toList(),
              ),
              const Text('First to know', style: TextStyle(color: blackPrimaryColor,fontWeight: FontWeight.bold,fontSize: 24),),
              SizedBox(height: 24,),
              Center(child: const Text('All news in one place, be the\n first to know last news', style: TextStyle(color: greyPrimaryColor,fontSize: 18),textAlign: TextAlign.center,)),
              SizedBox(height: 64,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: purplePrimaryColor,
                  borderRadius: BorderRadius.circular(8)
                ),
                  child: Center(
                    child: const Text('Next',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),
                    ),
                  )
              ).onTap(()=> const GetStarted().launch(context)),
            ],
          ),
        ),
      ),
    );
  }
}
