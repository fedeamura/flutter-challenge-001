import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double width;
  final List<Color> colors;
  final String title;
  final String subtitle;
  final IconData icon;
  final IconData titleIcon;
  final CustomClipper clipper;

  Button({
    this.width,
    this.colors,
    this.title,
    this.titleIcon,
    this.subtitle,
    this.icon,
    this.clipper,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 20,
            offset: Offset.zero,
          )
        ],
        gradient: LinearGradient(
          colors: colors,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Stack(
          children: <Widget>[

            //Curve
            ClipPath(
              clipper: clipper,
              child: Container(
                color: Colors.black.withOpacity(0.1),
              ),
            ),

            //Icon
            Positioned(
              right: 16.0,
              top: 16.0,
              child: Icon(
                icon ?? Icons.help,
                color: Colors.white.withOpacity(0.9),
                size: 30,
              ),
            ),

            //Title
            Positioned(
              bottom: 16.0 + 16.0 + 4.0,
              left: 16.0 + (titleIcon != null ? 24 : 0.0),
              child: Text(
                title ?? 'title',
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: Colors.white,
                      fontSize: 36,
                    ),
              ),
            ),

            //Title icon
            if (titleIcon != null)
              Positioned(
                left: 16.0,
                bottom: 16.0 + 16.0 + 12,
                child: Icon(
                  titleIcon,
                  color: Colors.white.withOpacity(0.9),
                  size: 20,
                ),
              ),

            //Subtitle
            Positioned(
              bottom: 16.0,
              left: 16.0,
              child: Text(
                subtitle ?? 'Subtitle',
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
