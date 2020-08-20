import 'package:flutter/material.dart';
//Image picOfPainting
//Image picOfPaintingDetails
//Text textInputOfPaintingDetails
//Text textInputPaintingDescription

//A painting will be defined as a list of photos of the art and a couple photos/text input of painting detailed information re: artist, date, medium, etc.

//Build a stateless widget that displays a list of images and a list of details and a list of text input by the user.abstract

// ignore: camel_case_types
// ignore: must_be_immutable
// ignore: camel_case_types
class painting extends StatelessWidget {
  final Image paintingPhoto = null;
  final Image detailsPhoto = null;
  final Text detailsInput = Text('Empty paining object String');

  Widget build(BuildContext context) {
    //return this painting to a list of paintings to an exhibit to an exhibits page display (exhibits.dart file)
    //This painting List will probably return the display to the scafold object body in exhibits.dart file.
    //The body should hold a column that can accept more than one exhibit.
    //

    return Card(
      borderOnForeground: true,
      child: Row(children: [
        Image(
          image: null,
        ),
        Image(
          image: null,
        ),
        Text('Empty painting object input'),
      ]),
    );
  }
}
