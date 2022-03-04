import 'package:flutter/material.dart';
import 'package:parcel/widgets/widget.dart';

class SendParcelScreen extends StatelessWidget {
  const SendParcelScreen({Key? key}) : super(key: key);
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
              'send Parcel',
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 17),
            Text(
              'send Parcel',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 11,
            ),
            const MyParcelsize(
                parcelSize: 'small',
                parcelSizeDimension: 'max 25 ky, 8 x 34 x 64 cm',
                parcelSizeDiscription: 'Fits in an Envelop',
                parcelSizeImage: 'assets/images/img_parcel_size_small.png'),
            const MyParcelsize(
                parcelSize: 'Medium',
                parcelSizeDimension: 'max 25 ky, 19 x 34 x 64 cm',
                parcelSizeDiscription: 'Fits in an Envelop',
                parcelSizeImage: 'assets/images/img_parcel_size_medium.png'),
            const MyParcelsize(
                parcelSize: 'Large',
                parcelSizeDimension: 'max 25 kg, 41 x 34 x 64 cm',
                parcelSizeDiscription: 'Fits in an Envelop',
                parcelSizeImage: 'assets/images/img_parcel_size_large.png'),
            const MyParcelsize(
                parcelSize: 'Custom',
                parcelSizeDimension: 'max 50kg or 300cm',
                parcelSizeDiscription: 'Fits in an Envelop',
                parcelSizeImage: 'assets/images/img_parcel_size_custom.png'),
          ],
        ),
      ),
    );
  }
}
