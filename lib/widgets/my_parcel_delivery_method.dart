import 'package:flutter/material.dart';

class MyParcelDeliverymethod extends StatefulWidget {
  const MyParcelDeliverymethod(
      {Key? key,
      required this.parcelDeliveryMethod,
      required this.parcelDliveryDuration,
      required this.parcelDeliveryImage})
      : super(key: key);

  final String parcelDeliveryMethod, parcelDliveryDuration, parcelDeliveryImage;

  @override
  State<MyParcelDeliverymethod> createState() => _MyParcelDeliverymethodState();
}

class _MyParcelDeliverymethodState extends State<MyParcelDeliverymethod> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 16,
      ),
      // padding: const EdgeInsets.symmetric(
      //   horizontal: 16,
      //   vertical: 8,
      // ),
      //height: 115,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Theme.of(context).backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor,
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.all(0),
        trailing: const SizedBox.shrink(),
        title: Container(
          padding: const EdgeInsets.all(16),
          height: 102,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.parcelDeliveryImage),
                  ),
                ),
              ),
              const SizedBox(
                width: 34,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.parcelDeliveryMethod,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    widget.parcelDeliveryMethod,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            ],
          ),
        ),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 1,
            color: const Color(0xFFd5d5d5),
          ),
          _buildExpansionChildren(context),
        ],
      ),
    );
  }

  Widget _buildExpansionChildren(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16).copyWith(top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          Text(
            'Recipient Info',
            style: Theme.of(context).textTheme.headline5,
          ),
          Row(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                'Name',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          TextField(
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                'Phone Number',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          TextField(
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                'Email',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          TextField(
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                'Address',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          TextField(
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
