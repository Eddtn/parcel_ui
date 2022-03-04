import 'package:flutter/material.dart';
import 'package:parcel/widgets/my_parcel_office.dart';

class ParcelCenterScreen extends StatefulWidget {
  const ParcelCenterScreen({Key? key}) : super(key: key);

  @override
  State<ParcelCenterScreen> createState() => _ParcelCenterScreenState();
}

class _ParcelCenterScreenState extends State<ParcelCenterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: ListView(
          children: [
            Text(
              'Parcel Center',
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 29,
            ),
            const SizedBox(
              height: 221,
              //child: GoogleMap(),
            ),
            const SizedBox(
              height: 24,
            ),
            const MyParcelOffice(
                parcelOfficeCode: 'NY0925',
                parcelOfficeHours: 'Available 24/7',
                parcelOfficeName: '985 meadow st',
                parcelOfficeAddress: 'Staten Island, NY10987',
                parcelOfficeStats: 'Fully Occupied',
                parcelOfficeStatsNumber: '1.0'),
            const MyParcelOffice(
                parcelOfficeCode: 'NY0925',
                parcelOfficeHours: 'Available 24/7',
                parcelOfficeName: '985 meadow st',
                parcelOfficeAddress: 'Staten Island, NY10987',
                parcelOfficeStats: 'Fully Occupied',
                parcelOfficeStatsNumber: '0.3'),
            const MyParcelOffice(
                parcelOfficeCode: 'NY0925',
                parcelOfficeHours: 'Available 24/7',
                parcelOfficeName: '985 meadow st',
                parcelOfficeAddress: 'Staten Island, NY10987',
                parcelOfficeStats: 'Fully Occupied',
                parcelOfficeStatsNumber: '0.1'),
          ],
        ),
      ),
    );
  }
}
