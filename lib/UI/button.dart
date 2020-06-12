import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double                      width;
  final double                      height;
  final BuildContext                context;
  final Color                       backgroundColor;
  final double                      corner;
  final double                      cornerTopLeft;
  final double                      cornerTopRight;
  final double                      cornerBottomLeft;
  final double                      cornerBottomRight;
  final double                      border;
  final double                      borderLeft;
  final double                      borderRight;
  final double                      borderTop;
  final double                      borderBottom;
  final Color                       borderColor;
  final double                      padding;
  final double                      paddingTop;
  final double                      paddingBottom;
  final double                      paddingLeft;
  final double                      paddingRight;
  final String                      string;
  final Color                       colorString;
  final double                      fontSizeString;
  final FontWeight                  fontWeightString;
  final void Function()             onPressed;
  final bool                        iconLeft;
  final bool                        iconRight;
  final bool                        icon;
  final IconData                    iconData;
  final Color                       iconColor;
  final double                      iconSize;

  Button({
    @required this.context,
    this.width,
    this.height                     = 50,
    this.backgroundColor            = Colors.blue,
    this.corner                     = 0,
    this.cornerTopLeft              = 0,
    this.cornerTopRight             = 0,
    this.cornerBottomLeft           = 0,
    this.cornerBottomRight          = 0,
    this.border                     = 0,
    this.borderLeft                 = 0,
    this.borderRight                = 0,
    this.borderTop                  = 0,
    this.borderBottom               = 0,
    this.borderColor                = Colors.black,
    this.padding                    = 0,
    this.paddingTop                 = 0,
    this.paddingBottom              = 0,
    this.paddingLeft                = 0,
    this.paddingRight               = 0,
    this.string                     = "Text",
    this.colorString                = Colors.white,
    this.fontSizeString             = 18,
    this.fontWeightString           = FontWeight.w400,
    this.onPressed,
    this.iconLeft                   = true,
    this.iconRight                  = false,
    this.icon                       = false,
    this.iconData                   = Icons.check,
    this.iconSize                   = 50,
    this.iconColor                  = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: height,
      padding: padding == null ? EdgeInsets.all(padding) : EdgeInsets.only(
        top: paddingTop,
        left: paddingLeft,
        right: paddingRight,
        bottom: paddingBottom,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: corner == null ? BorderRadius.only(
          topLeft: Radius.circular(cornerTopLeft),
          topRight: Radius.circular(cornerTopRight),
          bottomLeft: Radius.circular(cornerBottomLeft),
          bottomRight: Radius.circular(cornerBottomRight),
        ) : BorderRadius.all(
          Radius.circular(corner),
        ),
        border: border == null ? Border(
          top: BorderSide(width: borderTop, color: borderColor),
          left: BorderSide(width: borderLeft, color: borderColor),
          right: BorderSide(width: borderRight, color: borderColor),
          bottom: BorderSide(width: borderBottom, color: borderColor),
        ) : Border.all(
          width: border,
          color: borderColor,
        ),
      ),
      child: new MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: corner == null ? BorderRadius.only(
            topLeft: Radius.circular(cornerTopLeft),
            topRight: Radius.circular(cornerTopRight),
            bottomLeft: Radius.circular(cornerBottomLeft),
            bottomRight: Radius.circular(cornerBottomRight),
          ) : BorderRadius.all(
            Radius.circular(corner),
          ),
        ),
        onPressed: onPressed,
        child: new Stack(
          children: [
            icon == true ? iconLeft == true ? new Positioned(
              left: 0,
              child: Icon(iconData, size: iconSize, color: iconColor),
            ) : iconRight == true ? new Positioned(
              right: 0,
              child: Icon(iconData, size: iconSize, color: iconColor),
            ) : new SizedBox() : new SizedBox(),
          ],
        ),
      ),
    );
  }
}