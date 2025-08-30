import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/utils/interest_button.dart';
import 'package:linqup_mobile_application/widget/card/card_button.dart';

class InterestWrapper extends StatefulWidget {
  final bool showAll;
  const InterestWrapper({required this.showAll, super.key});

  @override
  State<StatefulWidget> createState() {
    return _InterestWrapperState();
  }
}

class _InterestWrapperState extends State<InterestWrapper> {
  List<InterestButton> buttonList = [
    InterestButton(name: 'Football', icon: 'assets/png/ball.png'),
    InterestButton(name: 'Nature', icon: 'assets/png/nature.png'),
    InterestButton(name: 'Language', icon: 'assets/png/language.png'),
    InterestButton(name: 'Surfing', icon: 'assets/png/surfing.png'),
    InterestButton(name: 'Photography', icon: 'assets/png/photography.png'),
    InterestButton(name: 'Music', icon: 'assets/png/music.png'),
    InterestButton(name: 'Writing', icon: 'assets/png/writing.png'),
    InterestButton(name: 'Fashion', icon: 'assets/png/fashion.png'),
    InterestButton(name: 'Books', icon: 'assets/png/book.png'),
    InterestButton(name: 'Kinky Interest', icon: 'assets/png/kinky.png'),
    InterestButton(
        name: 'Serious Relationship', icon: 'assets/png/relationship.png'),
    InterestButton(name: 'Open to Adventure', icon: 'assets/png/adventure.png'),
    InterestButton(
        name: 'Deep Conversation', icon: 'assets/png/conversation.png'),
    InterestButton(
        name: 'Making New Friends', icon: 'assets/png/make_friends.png'),
    InterestButton(name: 'Sex', icon: 'assets/png/sex.png'),
    InterestButton(name: 'PDA', icon: 'assets/png/pda.png'),
    InterestButton(name: 'Group Hangouts', icon: 'assets/png/hangouts.png'),
  ];

  bool buttonSelect = false;

  void selectedButton(index) {
    setState(() {
      buttonList[index].isSelected = !buttonList[index].isSelected;
    });
  }

  @override
  Widget build(context) {
    final displayedButtons =
        widget.showAll ? buttonList : buttonList.take(6).toList();
    return Wrap(
      spacing: 20.0,
      runSpacing: 10.0,
      children: List.generate(
        displayedButtons.length,
        (index) {
          final button = displayedButtons[index];
          return CardButton(
            cardButtonText: button.name,
            cardButtonImage: button.icon,
            borderColor: Theme.of(context).colorScheme.onPrimaryContainer,
            backgroundColor: button.isSelected
                ? Theme.of(context).colorScheme.primary
                : Colors.transparent,
            cardButtonTextStyle: button.isSelected
                ? Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    )
                : Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
            customPaddingHorizontal: 10.0,
            customPaddingVertical: 8.0,
            onTap: () => selectedButton(index),
          );
        },
      ),
    );
  }
}
