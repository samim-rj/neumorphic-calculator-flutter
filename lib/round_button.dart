import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class RoundButton extends StatefulWidget {
  RoundButton({
    @required this.buttonText,
    this.colorText,
    @required this.onPressed,
    @required this.buttonBoxShape,
    this.buttonWidth,
  });
  final String buttonText;
  final Color colorText;
  final Function onPressed;
  final NeumorphicBoxShape buttonBoxShape;
  final double buttonWidth;

  @override
  _RoundButtonState createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onClick: widget.onPressed,
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        depth: 6,
        shadowDarkColor: Colors.grey.shade500,
        lightSource: LightSource.topLeft,
        color: Color(0xFFEDEBEC),
      ),
      boxShape: widget.buttonBoxShape,
      child: Container(
        height: MediaQuery.of(context).size.height / 14,
        width: MediaQuery.of(context).size.width / widget.buttonWidth,
        child: Center(
          child: Text(
            widget.buttonText,
            style: TextStyle(
              color: widget.colorText,
              fontSize: 23.0,
              fontFamily: 'Montserrat',
            ),
          ),
        ),
      ),
    );
  }
}
