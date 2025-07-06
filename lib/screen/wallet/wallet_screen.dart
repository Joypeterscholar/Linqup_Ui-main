import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/button/custom_button.dart';
import 'package:linqup_mobile_application/widget/custom_input/custom_input_wrapper.dart';
import 'package:linqup_mobile_application/widget/gap/gap.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';
import 'package:linqup_mobile_application/widget/wallet/earning%20_item.dart';
import 'package:linqup_mobile_application/widget/wallet/payment_card_item.dart';
import 'package:linqup_mobile_application/widget/wallet/wallet_balance.dart';
import 'package:linqup_mobile_application/widget/wallet/wallet_item_wrapper.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  void _bottomModal(context) {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 15,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Name(
                      text: 'Add new card',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
                const Gap(
                  height: 10,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Name(
                          text: 'Personal Details',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const Gap(
                          height: 5,
                        ),
                        const CustomInputWrapper(
                          hintText: 'Full Name',
                          containerWidth: 400,
                        ),
                        const Gap(
                          height: 5,
                        ),
                        const CustomInputWrapper(
                          leadingImage: 'assets/png/nigeria.png',
                          cameraIconData: Icons.arrow_forward_ios,
                          hintText: 'Nigeria',
                          containerWidth: 400,
                        ),
                        const Gap(
                          height: 5,
                        ),
                        const CustomInputWrapper(
                          hintText: 'Street Address',
                          containerWidth: 400,
                        ),
                        const Gap(
                          height: 30,
                        ),
                        Name(
                          text: 'Card Details',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const Gap(
                          height: 10,
                        ),
                        const CustomInputWrapper(
                          hintText: 'Card Number',
                          containerWidth: 400,
                        ),
                        const Gap(
                          height: 5,
                        ),
                        const Row(
                          children: [
                            CustomInputWrapper(
                              hintText: 'MM/YY',
                              containerWidth: 180,
                            ),
                            Spacer(),
                            CustomInputWrapper(
                              hintText: 'CVC',
                              containerWidth: 180,
                            ),
                          ],
                        ),
                        const Gap(
                          height: 30,
                        ),
                        Center(
                          child: CustomButton(
                            onClick: () {},
                            title: 'Save Card Information',
                            titleStyle: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary),
                            bgColor: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                            customPaddingVertical: 20,
                            customButtonWidth: 350,
                            topLeftRadius: 15,
                            topRightRadius: 15,
                            bottomLeftRadius: 15,
                            bottomRightRadius: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Name(
          text: 'Wallet',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        ),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.4),
        width: double.infinity,
        child: Column(
          children: [
            const WalletBalance(),
            const Gap(
              height: 30,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const WalletItemWrapper(
                        title: 'Earnings',
                        content: Column(
                          children: [
                            EarningItem(title: 'Balance', balance: '270LQ'),
                            EarningItem(title: 'Referrals', balance: '17LQ'),
                          ],
                        ),
                      ),
                      const Gap(
                        height: 50,
                      ),
                      WalletItemWrapper(
                        onTap: () => _bottomModal(context),
                        isAddContainerVisible: true,
                        title: 'Payment Cards',
                        content: const Column(
                          children: [
                            Gap(
                              height: 10,
                            ),
                            PaymentCardItem(
                              image: 'assets/jpg/profile.jpeg',
                              name: 'Peter John',
                              isPrimary: true,
                              number: '****123456',
                            ),
                            Gap(
                              height: 5,
                            ),
                            PaymentCardItem(
                              isPrimary: false,
                              image: 'assets/jpg/profile.jpeg',
                              name: 'Peter John',
                              number: '****123456',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
