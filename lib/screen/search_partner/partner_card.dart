import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:linqup_mobile_application/screen/search_partner/partner_card_content.dart';

class PartnerCard extends StatefulWidget {
  const PartnerCard({super.key});

  @override
  State<PartnerCard> createState() => _PartnerCardState();
}

class _PartnerCardState extends State<PartnerCard> {
  final List<PartnerCardContent> cards = [
    PartnerCardContent(
      image: 'assets/jpg/women1.jpg',
      userName: 'Alfredo Calzoni,',
      userAge: '20',
      userLocation: 'Hamburg, Germany',
      userDistance: '18.8 km away',
      instagramHandler: () {},
      twitterHandler: () {},
    ),
    PartnerCardContent(
      image: 'assets/jpg/women4.jpg',
      userName: 'Pekky Ngozi,',
      userAge: '25',
      userLocation: 'Istanbul, Turkey',
      userDistance: '128.8 km away',
      instagramHandler: () {},
      twitterHandler: () {},
    ),
    PartnerCardContent(
      image: 'assets/jpg/women2.jpg',
      userName: 'Joy Peters,',
      userAge: '27',
      userLocation: 'Abuja, Nigeria',
      userDistance: '100.8 km away',
      instagramHandler: () {},
      twitterHandler: () {},
    ),
    PartnerCardContent(
      image: 'assets/jpg/profile.jpeg',
      userName: 'Ebube John Enyi,',
      userAge: '12',
      userLocation: 'Lagos, Nigeria',
      userDistance: '8 km away',
      instagramHandler: () {},
      twitterHandler: () {},
    ),
    PartnerCardContent(
      image: 'assets/jpg/profile2.jpg',
      userName: 'Princess Abdul,',
      userAge: '23',
      userLocation: 'Bojida, Ibadan',
      userDistance: '90.8 km away',
      instagramHandler: () {},
      twitterHandler: () {},
    ),
  ];

  bool _isLoading = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _preloadImages();
  }

  Future<void> _preloadImages() async {
    for (var wrapper in cards) {
      await precacheImage(AssetImage(wrapper.image), context);
    }

    setState(() {
      _isLoading = true;
    });
  }

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: _isLoading
          ? CardSwiper(
              padding: const EdgeInsets.all(5),
              cardsCount: cards.length,
              isLoop: true,
              initialIndex: 0,
              maxAngle: 20,
              numberOfCardsDisplayed: 1,
              allowedSwipeDirection: const AllowedSwipeDirection.all(),
              cardBuilder:
                  (context, index, percentThresholdX, percentThresholdY) =>
                      cards[index],
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
