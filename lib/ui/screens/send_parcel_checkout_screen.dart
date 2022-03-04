import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SendParcelCheckOutScreen extends StatefulWidget {
  const SendParcelCheckOutScreen({Key? key}) : super(key: key);

  @override
  State<SendParcelCheckOutScreen> createState() =>
      _SendParcelCheckOutScreenState();
}

class _SendParcelCheckOutScreenState extends State<SendParcelCheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: ListView(
            children: [
              Text(
                'Check Out',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(height: 21),
              Container(
                height: 207,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 19,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade200,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/img_card_background.png'),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '............0412',
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          ?.copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Annie Roberton',
                          style:
                              Theme.of(context).textTheme.headline4?.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                        Text(
                          '08/23',
                          style:
                              Theme.of(context).textTheme.headline4?.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: _buildBottomSheet(),
    );
  }

  Widget _buildBottomSheet() {
    return Container(
      padding: const EdgeInsets.all(24),
      height: MediaQuery.of(context).size.height * 0.5,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
        color: Color(0xFFf5f5f5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Summary',
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(
              width: 45,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Edit',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      SvgPicture.asset('assets/images/icon_details.svg'),
                    ],
                  )
                ],
              ),
            ),
          ]),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recipient',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'James may\njames.mail@mail.com\n01698456789\n11 Rosemount,meadows, Glasgow, G71Bel ',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Parcel Size',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'Medium',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'RDelivery method',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'From door to door',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          SizedBox(
            height: 48,
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Pay  3.08',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              style: Theme.of(context).textButtonTheme.style,
            ),
          ),
        ],
      ),
    );
  }
}
