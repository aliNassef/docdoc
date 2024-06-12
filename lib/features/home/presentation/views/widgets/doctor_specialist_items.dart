
import 'package:flutter/material.dart';

import 'doctor_specialist_item.dart';

class DoctorSpecialistItems extends StatelessWidget {
  const DoctorSpecialistItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        DoctorSpecialistItem(
          img: 'assets/images/general.png',
          title: 'General',
        ),
        Spacer(),
        DoctorSpecialistItem(
          img: 'assets/images/neurologic.png',
          title: 'Neurologic',
        ),
        Spacer(),
        DoctorSpecialistItem(
          img: 'assets/images/Pediatric.png',
          title: 'Pediatric',
        ),
        Spacer(),
        DoctorSpecialistItem(
          img: 'assets/images/Radiology.png',
          title: 'Radiology',
        ),
      ],
    );
  }
}
