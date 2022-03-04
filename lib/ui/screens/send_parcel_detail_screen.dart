import 'package:flutter/material.dart';
import 'package:parcel/widgets/widget.dart';

class SendParcelDetailScreen extends StatefulWidget {
  const SendParcelDetailScreen({Key? key}) : super(key: key);

  @override
  State<SendParcelDetailScreen> createState() => _SendParcelDetailScreenState();
}

class _SendParcelDetailScreenState extends State<SendParcelDetailScreen> {
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
              'Delivery Method',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 11,
            ),
            const MyParcelDeliverymethod(
              parcelDeliveryMethod: 'From door to parcel center',
              parcelDliveryDuration: '1 - 2 Days',
              parcelDeliveryImage: 'assets/images/img_door_to_parcel.png',
            ),
            const MyParcelDeliverymethod(
              parcelDeliveryMethod: 'From door To door',
              parcelDliveryDuration: '2 - 3 Days',
              parcelDeliveryImage: 'assets/images/img_door_to_door.png',
            ),
          ],
        ),
      ),
    );
  }
}
