import 'package:flutter/material.dart';

class MyParcelOffice extends StatefulWidget {
  const MyParcelOffice(
      {Key? key,
      required this.parcelOfficeCode,
      required this.parcelOfficeHours,
      required this.parcelOfficeName,
      required this.parcelOfficeAddress,
      required this.parcelOfficeStats,
      required this.parcelOfficeStatsNumber})
      : super(key: key);

  final String parcelOfficeCode,
      parcelOfficeHours,
      parcelOfficeName,
      parcelOfficeAddress,
      parcelOfficeStats,
      parcelOfficeStatsNumber;

  @override
  State<MyParcelOffice> createState() => _MyParcelOfficeState();
}

class _MyParcelOfficeState extends State<MyParcelOffice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Theme.of(context).backgroundColor,
          boxShadow: [
            BoxShadow(
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(0, 0),
              color: Theme.of(context).shadowColor,
            ),
          ]),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.parcelOfficeCode,
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                widget.parcelOfficeHours,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.parcelOfficeName,
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                widget.parcelOfficeAddress,
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.parcelOfficeStats,
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2.5),
                  child: LinearProgressIndicator(
                    value: double.parse(widget.parcelOfficeStatsNumber),
                    color: Theme.of(context).appBarTheme.backgroundColor,
                    backgroundColor: const Color(0XFFF8F8F8),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
