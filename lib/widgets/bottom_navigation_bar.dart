import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar(
      {Key? key, required this.selectedIndex, this.onTap})
      : super(key: key);

  final int selectedIndex;
  final Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 12,
      unselectedFontSize: 12,
      selectedLabelStyle: Theme.of(context).textTheme.headline5,
      unselectedLabelStyle: Theme.of(context).textTheme.headline5,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: selectedIndex == 0
                ? SvgPicture.asset('assets/images/icon_my_parcels.svg')
                : SvgPicture.asset('assets/images/icon_my_parcels_grey.svg'),
            label: 'My Parcels'),
        BottomNavigationBarItem(
            icon: selectedIndex == 1
                ? SvgPicture.asset('assets/images/icon_send_parcel.svg')
                : SvgPicture.asset('assets/images/icon_send_parcel_grey.svg'),
            label: 'Send Parcel'),
        BottomNavigationBarItem(
            icon: selectedIndex == 2
                ? SvgPicture.asset('assets/images/icon_parcel_center.svg')
                : SvgPicture.asset('assets/images/icon_parcel_center_grey.svg'),
            label: 'Parcel Center'),
      ],
      currentIndex: selectedIndex,
      unselectedItemColor: Theme.of(context).unselectedWidgetColor,
      selectedItemColor: Colors.black,
      onTap: (va) {
        print(va);
        if (onTap != null) {
          onTap!(va);
        }
      },
    );
  }
}
