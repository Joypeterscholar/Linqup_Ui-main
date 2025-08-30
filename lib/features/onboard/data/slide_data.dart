
import 'package:flutter/cupertino.dart';

import '../ui/slide_content.dart';

List<SlideContent> sliderItems = [
  SlideContent(
    image: 'assets/png/kiss_1.png',
    label: 'Find Your Kind of Connection',
    subContent:
    "Whether you're looking for love, friendship, or meaningful connections, we’ve created a space that fits your vibe",
    buttonText: 'Find Your Match!',
    onClick: (ctx) {
      Navigator.pushNamed(ctx, '/continue_with');
    },
  ),
  SlideContent(
    image: 'assets/png/date_online_2.png',
    label: 'Chat, Flirt, \nor Just Chill',
    subContent:
    "Meet new people, spark real conversations, and build connection that go beyond swipes and small talk.",
    buttonText: 'Chat',
    onClick: (ctx) {
      Navigator.pushNamed(ctx, '/continue_with');
    },
  ),
  SlideContent(
    image: 'assets/png/date_online_3.png',
    label: 'Friends First? \nTotally Fine.',
    subContent:
    "Not ready for dating? No problem. Connect with like-minded people and build your circle at your own pace.",
    buttonText: 'Find Friends',
    onClick: (ctx) {
      Navigator.pushNamed(ctx, '/continue_with');
    },
  ),
  SlideContent(
    image: 'assets/png/date_online_4.png',
    label: 'Share the \nLove & Earn',
    subContent:
    "Invite your friends and earn rewards for every successful referrals. The more you share, the more you earn!",
    buttonText: 'Refer a Friends',
    onClick: (ctx) {
      Navigator.pushNamed(ctx, '/continue_with');
    },
  ),
  SlideContent(
    image: 'assets/png/date_online_5.png',
    label: 'Your Journey \nStarts Now',
    buttonText: 'Create Account',
    secondButtonText: 'Log In',
    onClick: (ctx) {
      Navigator.pushNamed(ctx, '/sign-up');
    },
    secondOnClick: (ctx) {
      Navigator.pushNamed(ctx, '/continue_with');
    },
  ),
];
