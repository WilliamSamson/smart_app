import 'package:flutter/material.dart';

class ColorSlider extends StatefulWidget {
  final void Function(Color) callBackColorTapped;
  final Color noteColor;
  ColorSlider({@required this.callBackColorTapped, @required this.noteColor});
  @override
  _ColorSliderState createState() => _ColorSliderState();
}

class _ColorSliderState extends State<ColorSlider> {
  final colors = [
    Color(0xffffffff), // classic white
    Color(0xfff28b81), // light pink
    Color(0xfff7bd02), // yellow
    Color(0xfffbf476), // light yellow
    Color(0xffcdff90), // light green
    Color.fromARGB(255, 47, 118, 103), // turquoise
    Color(0xffcbf0f8), // light cyan
    Color.fromARGB(255, 41, 80, 146), // light blue
    Color.fromARGB(255, 107, 62, 146), // plum
    Color.fromARGB(255, 176, 68, 131), // misty rose
    Color.fromARGB(255, 188, 126, 61), // light brown
    Color.fromARGB(255, 67, 14, 14) // light gray
  ];

  final Color borderColor = Color(0xffd3d3d3);
  final Color foregroundColor = Color(0xff595959);

  final _check = Icon(Icons.star);

  Color noteColor;
  int indexOfCurrentColor;
  @override
  void initState() {
    super.initState();
    this.noteColor = widget.noteColor;
    indexOfCurrentColor = colors.indexOf(noteColor);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(colors.length, (index) {
        return GestureDetector(
            onTap: () => _colorChangeTapped(index),
            child: Padding(
                padding: EdgeInsets.only(left: 6, right: 6),
                child: Container(
                    child: new CircleAvatar(
                      child: _checkOrNot(index),
                      foregroundColor: foregroundColor,
                      backgroundColor: colors[index],
                    ),
                    width: 38.0,
                    height: 38.0,
                    padding: const EdgeInsets.all(1.0), // border width
                    decoration: new BoxDecoration(
                      color: borderColor, // border color
                      shape: BoxShape.circle,
                    ))));
      }),
    );
  }

  void _colorChangeTapped(int indexOfColor) {
    setState(() {
      noteColor = colors[indexOfColor];
      indexOfCurrentColor = indexOfColor;
      widget.callBackColorTapped(colors[indexOfColor]);
    });
  }

  Widget _checkOrNot(int index) {
    if (indexOfCurrentColor == index) {
      return _check;
    }
    return null;
  }
}
