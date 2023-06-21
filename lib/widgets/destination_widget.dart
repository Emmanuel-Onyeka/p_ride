import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';

class DestinationWidget extends StatelessWidget {
  const DestinationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 100,
          child: IconStepper(
            lineLength: 35,
            stepRadius: 10,
            lineDotRadius: 0.1,
            lineColor: Colors.black,
            stepColor: Colors.white,
            enableNextPreviousButtons: false,
            icons: const [
              Icon(
                Icons.circle,
                color: Colors.black,
                size: 10,
              ),
              Icon(Icons.location_on),
            ],
            activeStep: 2,
            direction: Axis.vertical,
          ),
        ),
        SizedBox(
          height: 90,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              FittedBox(
                child: Text(
                  'Stadium',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              FittedBox(
                child: Text(
                  'Stadium road, Port Harcourt',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              FittedBox(
                child: Text(
                  'Pleasure park',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              FittedBox(
                child: Text(
                  'Port Harcourt - Aba Express Road',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
