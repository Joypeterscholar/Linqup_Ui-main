import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/settings/country_modal.dart';
import 'package:linqup_mobile_application/widget/settings/interested_in_modal.dart';
import 'package:linqup_mobile_application/widget/settings/language_modal.dart';
import 'package:linqup_mobile_application/widget/settings/settings_item.dart';
import 'package:linqup_mobile_application/widget/settings/settings_item_wrapper.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

import '../../widget/send_credit/send_credit_score.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SettingsScreenState();
  }
}

class _SettingsScreenState extends State<SettingsScreen> {
  void _bottomModal(context, value) {
    if (value == 'country') {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (ctx) {
          return const CountryModal();
        },
      );
    }
    if (value == 'language') {
      showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return const LanguageModal();
        },
      );
    }
    if (value == 'interest') {
      showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return const InterestedInModal();
        },
      );
    }
  }

  double _ageRange = 19.0;
  double _distanceRange = 20.0;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Name(
          text: 'Settings',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            const SettingsItemWrapper(
              verticalPadding: 3.0,
              title: 'Phone Number',
              content: SettingsItem(
                title: '+234 90123456789',
                content: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const SettingsItemWrapper(
              verticalPadding: 3.0,
              title: 'Name',
              content: SettingsItem(
                title: 'Adichy Jnr',
                content: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const SettingsItemWrapper(
              verticalPadding: 3.0,
              title: 'Username',
              content: SettingsItem(
                title: 'adichyjnr',
                content: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const SettingsItemWrapper(
              verticalPadding: 3.0,
              title: 'Email',
              content: SettingsItem(
                title: 'adichyjnr@gmail.com',
                content: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const SettingsItemWrapper(
              verticalPadding: 3.0,
              title: 'Change Password',
              content: SettingsItem(
                title: '**********',
                content: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const SettingsItemWrapper(
              verticalPadding: 3.0,
              title: 'Gender',
              content: SettingsItem(
                title: 'Male',
                content: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const SettingsItemWrapper(
              verticalPadding: 3.0,
              title: 'Sexual Orientation',
              content: SettingsItem(
                title: 'Heterosexual',
                content: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const SettingsItemWrapper(
              verticalPadding: 3.0,
              title: 'Location Preference',
              content: SettingsItem(
                title: 'Use current location',
                content: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: SettingsItem(
                leadingIconData: Icons.remove_red_eye_outlined,
                title: 'Who can message me',
                content: Row(
                  children: [
                    Name(text: 'Anyone'),
                    Gap(
                      width: 5,
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: SettingsItem(
                leadingIconData: Icons.notifications_none_outlined,
                title: 'Notification',
                content: SizedBox(
                    height: 35,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Switch(
                        value: false,
                        onChanged: (value) {},
                      ),
                    )),
              ),
            ),
            InkWell(
              onTap: () => _bottomModal(context, 'country'),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: SettingsItem(
                  leadingIconData: Icons.language,
                  title: 'Country',
                  content: Row(
                    children: [
                      Name(text: 'Nigeria'),
                      Gap(
                        width: 5,
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => _bottomModal(context, 'language'),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: SettingsItem(
                  leadingIconData: Icons.translate,
                  title: 'Language',
                  content: Row(
                    children: [
                      Name(text: 'English'),
                      Gap(
                        width: 5,
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: SettingsItem(
                leadingIconData: Icons.social_distance,
                title: 'Distance Preference',
                content: const Row(
                  children: [
                    Name(text: '50km'),
                    Gap(
                      width: 5,
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
                bottomContent: Column(
                  children: [
                    Slider(
                      value: _distanceRange,
                      min: 19,
                      max: 45,
                      divisions: 45 - 19,
                      label: _distanceRange.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _distanceRange = value;
                        });
                      },
                    ),
                    SettingsItem(
                      title: 'Only show people in this range',
                      content: SizedBox(
                          height: 35,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Switch(
                              value: false,
                              onChanged: (value) {},
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: SettingsItem(
                leadingIconData: Icons.cake_outlined,
                title: 'Age Preference',
                content: const Row(
                  children: [
                    Name(text: '19 - 45'),
                    Gap(
                      width: 5,
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
                bottomContent: Column(
                  children: [
                    Slider(
                      value: _ageRange,
                      min: 19,
                      max: 45,
                      divisions: 45 - 19,
                      label: _ageRange.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _ageRange = value;
                        });
                      },
                    ),
                    SettingsItem(
                      title: 'Only show people in this range',
                      content: SizedBox(
                          height: 35,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Switch(
                              value: false,
                              onChanged: (value) {},
                            ),
                          )),
                    ),
                    Name(
                      text:
                          'By adjusting the range, you can tailor your search to suit your lifestyle and dating preferences',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () => _bottomModal(context, 'interest'),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: SettingsItem(
                  leadingIconData: Icons.interests_outlined,
                  title: 'Interested In',
                  bottomContent: Column(
                    children: [
                      Wrap(
                        children: [
                          SendCreditScore(
                            amount: 'Male',
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          const Gap(
                            width: 10,
                          ),
                          SendCreditScore(
                            amount: 'Female',
                            borderWidth: 1.5,
                            amountStyle: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                          ),
                          const Gap(
                            width: 10,
                          ),
                          SendCreditScore(
                            amount: 'Trans',
                            color: Theme.of(context).colorScheme.outline,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Gap(
              height: 20,
            ),
            Center(
              child: CustomButton(
                onClick: () {},
                title: 'Logout',
                customButtonWidth: 350,
                customPaddingVertical: 20,
                borderWidth: 1,
                borderColor: Theme.of(context).colorScheme.onPrimaryContainer,
                topLeftRadius: 50,
                topRightRadius: 50,
                bottomLeftRadius: 50,
                bottomRightRadius: 50,
                titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
